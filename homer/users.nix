{ pkgs, ... }:
{
    # Define a user account. Don't forget to set a password with ‘passwd’.
    users.users.jules = {
        isNormalUser = true;
        description = "jules";
        extraGroups = [ "networkmanager" "wheel" "scanner" "lp"];
        packages = with pkgs; [
            firefox
            kate
            kmail
            akregator
            korganizer
            vlc
            libreoffice
            yakuake
            skanlite
            kcalc
            gimp
            htop
            neovim
            unstable.jetbrains.clion
            unstable.jetbrains.datagrip
            unstable.yt-dlp
        ];
    };
}