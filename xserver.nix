{
    services = {
        xserver = {
            enable = true;
            libinput.enable = true; # Enable touchpad support (enabled default in most desktopManager).
        };
    };
    hardware = {
        opengl = {
            driSupport = true;
            driSupport32Bit = true;
        };
    };
}