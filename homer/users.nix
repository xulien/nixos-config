{ pkgs, ... }:
{
    # Define a user account. Don't forget to set a password with ‘passwd’.
    users.users.jules = {
        isNormalUser = true;
        description = "jules";
        extraGroups = [ "networkmanager" "wheel" "scanner" "lp"];
    };
}