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
    # home.packages =  with pkgs; [];
    home.stateVersion = "22.11";
}