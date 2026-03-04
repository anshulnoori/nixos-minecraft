{
  config,
  pkgs,
  lib,
  ...
}: let
  # https://github.com/Obydux/Minecraft-GraalVM-Flags
  jvmOpts = lib.concatStringsSep " " [
    "-Xms12G"
    "-Xmx12G"
    "-XX:+UseZGC"
    "-XX:+ZGenerational"
    "-XX:ZUncommitDelay=300"
    "-XX:ConcGCThreads=3"
    "-XX:ParallelGCThreads=4"
    "-XX:+UnlockExperimentalVMOptions"
    "-XX:+AlwaysPreTouch"
    "-XX:+DisableExplicitGC"
    "-XX:+UseStringDeduplication"
    "-XX:+OptimizeStringConcat"
    "-XX:+UseLargePages"
    "-XX:LargePageSizeInBytes=2m"
    "-XX:+UseNUMA"
    "-XX:+PerfDisableSharedMem"
    "-XX:MaxGCPauseMillis=200"
    "-Dfabric.systemLibraries=true"
    "-Djava.awt.headless=true"
    "-Xss2M"
  ];
in {
  services.minecraft-servers = {
    enable = true;
    eula = true;
    openFirewall = false;
    dataDir = "/srv/minecraft";
    runDir = "/run/minecraft";

    servers.fabric = {
      enable = true;
      autoStart = true;
      package = pkgs.fabricServers.fabric-1_21_10.override {
        loaderVersion = "0.18.4";
      };
      restart = "always";
      enableReload = true;

      jvmOpts = jvmOpts;

      serverProperties = {
        server-port = 25565;
        online-mode = true;
        view-distance = 12;
        simulation-distance = 8;
        max-players = 20;
        level-name = "world";
        # level-seed = "";
        difficulty = "hard";
        gamemode = "survival";
        allow-flight = true;
        pvp = true;
        spawn-protection = 1;
        white-list = false;
        enforce-whitelist = false;
        enable-rcon = false;
        enable-query = false;

        motd = "\\u00A76Minecraft Server";
        max-world-size = 29999984;
        allow-nether = true;
        enable-command-block = true;
        sync-chunk-writes = true;
      };

      symlinks = {
        mods = config.minecraftMods.modsDrv;
        "world/datapacks" = config.minecraftMods.datapacks;
      };
    };
  };
}
