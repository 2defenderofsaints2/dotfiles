{flake, ...}: let
  inherit (flake.config.service.instance) ollama;

  databasePath = ollama.paths.path0;
  openWebPort = ollama.ports.port0;
  ollamaPort = ollama.ports.port1;
  localhost = "127.0.0.1";
  name = ollama.name;
in {
  services = {
    ollama = {
      acceleration = false;
      enable = true;
      group = name;
      host = "http://${localhost}";
      models = databasePath;
      user = name;
    };
    open-webui = {
      enable = true;
      host = localhost;
      port = openWebPort;
      environment = {
        ENABLE_OLLAMA_API = "True";
        ANONYMIZED_TELEMETRY = "False";
        DO_NOT_TRACK = "True";
        SCARF_NO_ANALYTICS = "True";
        OLLAMA_BASE_URL = "http://${localhost}:${toString ollamaPort}";
        WEBUI_AUTH = "True";
      };
    };
  };

  systemd.tmpfiles.rules = ["Z ${databasePath} 0755 ${name} ${name} -"];

  networking = {
    firewall = {
      allowedTCPPorts = [
        ollamaPort
        openWebPort
      ];
    };
  };
}
