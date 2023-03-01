{ pkgs, ... }:

{
  programs = {
        bash.enable = true;
        git = {
          enable = true;
          userName  = "xules";
          userEmail = "julien@brunet.io";
        };
    };
     home.packages =  with pkgs; [
       firefox
       kate
       kmail
       ark
       akregator
       korganizer
       vlc
       libreoffice
       yakuake
       skanlite
       kcalc
       gimp
       htop
       unstable.jetbrains.clion
       unstable.jetbrains.datagrip
       unstable.yt-dlp
     ];
    home.stateVersion = "22.11";
}
