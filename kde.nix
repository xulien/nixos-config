{ pkgs, ... }:

{
    services = {
        xserver = {
            displayManager.sddm.enable = true;
            desktopManager.plasma5 = {
                enable = true;
                excludePackages = with pkgs.libsForQt5; [
                    elisa
                    khelpcenter
                ];
            };
        };
    };
    programs.partition-manager.enable = true;
}