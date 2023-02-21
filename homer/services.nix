{ pkgs, ... }:

{
    services = {
        openssh.enable = true;
        xserver = {
            enable = true;
            layout = "fr";
            xkbVariant = "bepo";
            libinput.enable = true; # Enable touchpad support (enabled default in most desktopManager).
            displayManager.sddm.enable = true;
            desktopManager.plasma5.enable = true;
        };
        printing = {
            enable = true;
            drivers = [ pkgs.brlaser pkgs.cups-filters ];
        };
        avahi = {
            enable = true;
            nssmdns = true;
            openFirewall = true; # for a WiFi printer
        };
        emacs = {
            enable = true;
            package = pkgs.emacs; # replace with emacs-gtk, or a version provided by the community overlay if desired.
        };
        minecraft-server = {
            enable = true;
            eula = true;
            openFirewall = true;
            declarative = true;
            serverProperties = {
              difficulty = "easy";
              online-mode = false;
              gamemode = "survival";
              force-gamemode = true;
              max-players = 4;
              motd = "NixOS Minecraft server!";
              white-list = false;
              simulation-distance = 20;
              view-distance = 30;
              allow-flight = false;
            };
          };
    };
}