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

        avahi = {
            enable = true;
            nssmdns = true;
            openFirewall = true; # for a WiFi printer
        };

    };
}
