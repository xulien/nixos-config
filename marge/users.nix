{
    # Define a user account. Don't forget to set a password with ‘passwd’.
    users.users.laure = {
        isNormalUser = true;
        description = "laure";
        extraGroups = [ "networkmanager" "wheel" "scanner" "lp"];
        packages = with pkgs; [
            firefox
            chromium
            kate
            thunderbird
            gimp
            htop
            vlc
            libreoffice
            yakuake
            skanlite
            kcalc
            unstable.yt-dlp
        ];
    };
    users.users.arthur = {
        isNormalUser = true;
        description = "arthur";
        extraGroups = [ "networkmanager"];
        packages = with pkgs; [
            firefox
            kate
            thunderbird
            gimp
            htop
            vlc
            libreoffice
            yakuake
            skanlite
            kcalc
        ];
    };
    users.users.eloise = {
        isNormalUser = true;
        description = "eloise";
        extraGroups = [ "networkmanager"];
        packages = with pkgs; [
            firefox
            kate
            thunderbird
            gimp
            htop
            vlc
            libreoffice
            yakuake
            skanlite
            kcalc
        ];
    };
}