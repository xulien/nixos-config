 {
    services.printing = {
        enable = true;
        drivers = [ pkgs.brlaser pkgs.cups-filters ];
    };
 }
