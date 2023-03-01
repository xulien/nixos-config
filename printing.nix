{ pkgs, ... }:

{
    services.printing = {
        enable = true;
        drivers = [ pkgs.brlaser pkgs.cups-filters ];
    };
    programs.system-config-printer.enable = true;
}