{
  config,
  pkgs,
  lib,
  ...
}: let
  # https://github.com/Obydux/Minecraft-GraalVM-Flags
  jvmOpts = lib.concatStringsSep " " [
    "-Xms2G"
    "-Xmx10G"
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
      package = pkgs.fabricServers.fabric-1_21_1.override {
        loaderVersion = "0.18.4";
      };
      restart = "always";
      enableReload = true;

      jvmOpts = jvmOpts;

      serverProperties = {
        server-port = 25565;
        online-mode = true;
        view-distance = 8;
        simulation-distance = 8;
        max-players = 20;
        level-name = "world";
        # level-seed = "";
        level-type = "bigglobe\\:bigglobe";
        difficulty = "hard";
        gamemode = "survival";
        allow-flight = true;
        pvp = true;
        spawn-protection = 1;
        white-list = false;
        enforce-whitelist = false;
        enable-rcon = false;
        enable-query = false;
        hide-online-players = true;
        log-ips = false;
        max-tick-time = -1;

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

  systemd.services.minecraft-server-fabric = {
    path = [pkgs.git];

    environment = {
      LD_LIBRARY_PATH = lib.makeLibraryPath [pkgs.udev];
    };
  };
}
