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
                ./homer/video-driver.nix
                ./xserver.nix
                ./printing.nix
                ./minecraft.nix
                ./ssh.nix
                ./kde.nix
                ./gnome.nix
                ./avahi.nix
		        ./neovim.nix
                ./inputrc.nix
                ./locales.nix
                ./sane.nix
                ./sound.nix
                ./steam.nix
                home-manager.nixosModules.home-manager {
                    home-manager.useGlobalPkgs = true;
                    home-manager.useUserPackages = true;
                    home-manager.users.jules = import ./users/jules.nix;
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
                ./marge/video-driver.nix
                ./xserver.nix
                ./printing.nix
                ./ssh.nix
                ./kde.nix
                ./gnome.nix
                ./avahi.nix
                ./neovim.nix
                ./inputrc.nix
                ./locales.nix
                ./sane.nix
                ./sound.nix
                ./steam.nix
                home-manager.nixosModules.home-manager {
                    home-manager.useGlobalPkgs = true;
                    home-manager.useUserPackages = true;
                    home-manager.users.laure = import ./users/laure.nix;
                    home-manager.users.arthur = import ./users/arthur.nix;
                    home-manager.users.eloise = import ./users/eloise.nix;
                }
            ];
        };
    };
}
