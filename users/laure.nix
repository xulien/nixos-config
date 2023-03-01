{ pkgs, ... }:

{
  programs = {
        bash.enable = true;
        git = {
          enable = true;
          userName  = "scara";
          userEmail = "laure@brunet.io";
        };
    };
     home.packages =  with pkgs; [
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
    home.stateVersion = "22.11";
}
