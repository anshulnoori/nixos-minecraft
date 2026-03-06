{
  config,
  pkgs,
  ...
}: {
  hardware.cpu.intel.updateMicrocode = true;

  boot.initrd = {
    availableKernelModules = [
      "nvme"
      "xhci_pci"
      "thunderbolt"
      "usb_storage"
      "sd_mod"
      "ahci"
    ];
    kernelModules = [];
  };

  boot.kernelModules = [
    "kvm-intel"
    "nvidia"
    "nvidia_modeset"
    "nvidia_uvm"
    "nvidia_drm"
  ];

  hardware.graphics = {
    enable = true;
    enable32Bit = false;
  };

  hardware.nvidia = {
    open = false;
    modesetting.enable = true;
    package = config.boot.kernelPackages.nvidia_x11;
    powerManagement = {
      enable = true;
      finegrained = false;
    };

    nvidiaSettings = false;
  };
  services.xserver.videoDrivers = ["nvidia"];

  environment.variables = {
    "__NV_PRIME_RENDER_OFFLOAD" = "1";
  };

  services.fstrim = {
    enable = true;
    interval = "weekly";
  };

  networking.hostId = "a3f2c1d8";
}
