{
    services.minecraft-server = {
        enable = true;
        eula = true;
        openFirewall = true;
        declarative = true;
        serverProperties = {
            difficulty = "easy";
            online-mode = false;
            gamemode = "survival";
            force-gamemode = true;
            max-players = 4;
            motd = "NixOS Minecraft server!";
            white-list = false;
            simulation-distance = 20;
            view-distance = 30;
            allow-flight = false;
        };
    };
}
