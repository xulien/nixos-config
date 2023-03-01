{ pkgs, ... }:

{
    programs = {
        bash.enable = true;
    };
    home.packages =  with pkgs; [
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
    home.stateVersion = "22.11";
}
