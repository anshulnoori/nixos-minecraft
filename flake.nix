{
  description = "Minecraft Java server — Fabric 1.21.10 on NixOS 25.11";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";

    nix-minecraft = {
      url = "github:Infinidoge/nix-minecraft";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-cachyos-kernel.url = "github:xddxdd/nix-cachyos-kernel/release";

    disko = {
      url = "github:nix-community/disko";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs @ {
    self,
    nixpkgs,
    nix-minecraft,
    nix-cachyos-kernel,
    disko,
    ...
  }: {
    nixosConfigurations.minecraft = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = {inherit inputs;};
      modules = [
        disko.nixosModules.disko
        ./disko.nix
        ./configuration.nix
        ./hardware-configuration.nix
        nix-minecraft.nixosModules.minecraft-servers
        {nixpkgs.overlays = [inputs.nix-minecraft.overlay];}
        ./minecraft.nix
        ./mods.nix
      ];
    };

    devShells.x86_64-linux.default = let
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in
      pkgs.mkShell {
        name = "nixos-minecraft-dev";
        packages = with pkgs; [
          packwiz
          jq
          unzip
          curl
          git
          nixd
          nil
        ];
        shellHook = ''
          echo ""
          echo "  nixos-minecraft dev shell"
          echo "  ──────────────────────────────────────────────────────────────"
          echo "  bash scripts/mrpack-to-nix.sh [--dry-run] [server.mrpack]"
          echo "    Convert a .mrpack export to mods.nix (defaults to ./server.mrpack)"
          echo ""
          echo "  packwiz --help   — packwiz modpack CLI"
          echo ""
        '';
      };
  };
}
