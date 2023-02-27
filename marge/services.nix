{ pkgs, ... }:

{
    services = {
        openssh.enable = true;
        xserver = {
            enable = true;
            videoDrivers = [ "nvidia" ];
            layout = "fr";
            xkbVariant = "";
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
    };
}
