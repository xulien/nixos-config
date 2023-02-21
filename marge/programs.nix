{
    programs = {
        system-config-printer.enable = true;
        partition-manager.enable = true;
        steam.enable = true;
        dconf.enable = true;
    };

    # Some programs need SUID wrappers, can be configured further or are
      # started in user sessions.
      # programs.mtr.enable = true;
      # programs.gnupg.agent = {
      #   enable = true;
      #   enableSSHSupport = true;
      # };
}