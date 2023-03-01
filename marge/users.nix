{ pkgs, ... }:

{
    # Define a user account. Don't forget to set a password with ‘passwd’.
    users.users.laure = {
        isNormalUser = true;
        description = "laure";
        extraGroups = [ "networkmanager" "wheel" "scanner" "lp"];
    };
    users.users.arthur = {
        isNormalUser = true;
        description = "arthur";
        extraGroups = [ "networkmanager"];
    };
    users.users.eloise = {
        isNormalUser = true;
        description = "eloise";
        extraGroups = [ "networkmanager"];
    };
}