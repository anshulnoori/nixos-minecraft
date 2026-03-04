{
  config,
  pkgs,
  lib,
  inputs,
  ...
}: {
  networking.hostName = "minecraft";
  time.timeZone = "America/New_York";
  i18n.defaultLocale = "en_US.UTF-8";

  system.stateVersion = "25.11";

  boot.loader = {
    systemd-boot = {
      enable = true;
      configurationLimit = 10;
    };
    efi.canTouchEfiVariables = true;
  };

  nixpkgs.overlays = [
    inputs.nix-cachyos-kernel.overlays.pinned
  ];

  boot.kernelPackages = pkgs.cachyosKernels.linuxPackages-cachyos-latest-lto-x86_64-v3;

  boot.kernelParams = [
    "mitigations=auto"
    "nowatchdog"
    "nmi_watchdog=0"
    "transparent_hugepage=madvise"
  ];

  boot.kernel.sysctl = {
    "vm.swappiness" = 10;
    "vm.dirty_ratio" = 15;
    "vm.dirty_background_ratio" = 5;
    "net.core.rmem_max" = 16777216;
    "net.core.wmem_max" = 16777216;
  };

  networking = {
    networkmanager.enable = true;

    nftables.enable = true;
    firewall.enable = false;

    nameservers = [
      "1.1.1.1"
      "1.0.0.1"
    ];
  };

  #   - Minecraft port 25565  → only from local subnet 192.168.1.0/24
  #   - Tailscale (UDP 41641) → open (needed for Tailscale to function)
  #   - All outbound          → allowed (needed for package downloads, Tailscale, etc.)
  #   - Everything else       → dropped (SSH is handled via Tailscale interface)
  networking.nftables.ruleset = ''
    table inet filter {
      chain input {
        type filter hook input priority filter; policy drop;
        iifname "lo" accept
        ct state { established, related } accept
        ip  protocol icmp  accept
        ip6 nexthdr  icmpv6 accept
        iifname "tailscale0" accept
        udp dport 41641 accept
        ip saddr 192.168.1.0/24 tcp dport 25565 accept
      }

      chain forward {
        type filter hook forward priority filter; policy drop;
      }

      chain output {
        type filter hook output priority filter; policy accept;
      }
    }
  '';

  services.tailscale = {
    enable = true;
  };

  users.mutableUsers = false;

  users.users.mvs = {
    isNormalUser = true;
    hashedPassword = "$6$fzYqBQK6aBDDDkSp$c0w06x.Yrv5KBkUQ6aJu3wNr0fb2DCAcCFcGzawU7kIxu4HjiD8V8flVdIaFA9YcnzjRIK7ZRS1yymDzewiBu.";
    description = "mvs";
    extraGroups = [
      "wheel"
      "minecraft"
    ];
  };

  security.sudo = {
    enable = true;
    wheelNeedsPassword = true;
  };

  powerManagement = {
    enable = true;
    cpuFreqGovernor = "performance";
  };

  systemd.sleep.extraConfig = ''
    AllowSuspend=no
    AllowHibernation=no
    AllowSuspendThenHibernate=no
    AllowHybridSleep=no
  '';

  services.logind = {
    settings = {
      Login = {
        HandlePowerKey = "ignore";
        HandleLidSwitch = "ignore";
        HandleLidSwitchExternalPower = "ignore";
      };
    };
  };

  services.upower.enable = true;

  environment.enableAllTerminfo = true;
  environment.systemPackages = with pkgs; [
    tmux
    btop
    iotop
    nvtopPackages.nvidia

    rsync
    unzip
    zip

    git
    curl
    jq
    vim

    iproute2
    tcpdump

    (writeShellScriptBin "mc" (builtins.readFile ./scripts/mc.sh))
  ];

  environment.shellAliases = {
    mcc = "mc console";
    mcs = "mc status";
    mcl = "mc log";
  };

  nix = {
    settings = {
      max-jobs = "auto";
      cores = 0;

      trusted-users = ["root" "mvs"];

      substituters = [
        "https://cache.nixos.org"
        "https://attic.xuyh0120.win/lantian"
        "https://cache.garnix.io"
        "https://nix-community.cachix.org"
      ];
      trusted-public-keys = [
        "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
        "lantian:EeAUQ+W+6r7EtwnmYjeVwx5kOGEBpjlBfPlzGlTNvHc="
        "cache.garnix.io:CTFPyKSLcx5RMJKfLo5EEPUObbA78b0YQ2DTCJXqr9g="
        "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
      ];

      experimental-features = ["nix-command" "flakes"];
    };

    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };

    optimise.automatic = true;
  };

  nixpkgs.config.allowUnfree = true;
  hardware.enableRedistributableFirmware = true;

  systemd.services.minecraft-server-fabric.serviceConfig.RestartSec = "10s";
}
