{
    inputs = {
        nixpkgs.url = github:NixOS/nixpkgs/nixos-22.11;
        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        nixpkgs-unstable.url = "nixpkgs/nixos-unstable";
    };

    outputs = { self, nixpkgs, nixpkgs-unstable, home-manager }:
    let
        system = "x86_64-linux";
        overlay-unstable = final: prev: {
            unstable = import nixpkgs-unstable {
                inherit system;
                config.allowUnfree = true;
            };
        };
    in {
        nixosConfigurations."homer" = nixpkgs.lib.nixosSystem {
            inherit system;
            modules = [
                ({ config, pkgs, ... }: { nixpkgs.overlays = [ overlay-unstable ]; }) # Overlays-module makes "pkgs.unstable" available in configuration.nix
                ./homer/configuration.nix
                ./homer/hardware-configuration.nix
                ./homer/bootloader.nix
                ./homer/network.nix
                ./homer/keymap.nix
                ./homer/users.nix
                ./homer/printing.nix
                ./homer/minecraft.nix
                ./homer/services.nix
                ./homer/programs.nix
                ./inputrc.nix
                ./locales.nix
                ./sane.nix
                ./sound.nix
                home-manager.nixosModules.home-manager {
                    home-manager.useGlobalPkgs = true;
                    home-manager.useUserPackages = true;
                    home-manager.users.jules = import ./homer/home/jules.nix;
                }
            ];
        };
        nixosConfigurations."marge" = nixpkgs.lib.nixosSystem {
            inherit system;
            modules = [
                ({ config, pkgs, ... }: { nixpkgs.overlays = [ overlay-unstable ]; }) # Overlays-module makes "pkgs.unstable" available in configuration.nix
                ./marge/configuration.nix
                ./marge/hardware-configuration.nix
                ./marge/bootloader.nix
                ./marge/network.nix
                ./marge/keymap.nix
                ./marge/users.nix
                ./marge/services.nix
                ./marge/programs.nix
                ./inputrc.nix
                ./locales.nix
                ./sane.nix
                ./sound.nix
            ];
        };
    };
}
