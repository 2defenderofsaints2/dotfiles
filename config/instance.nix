let
  user = "defenderofsaints";
in {
  instance = {
    jellyfin = {
      label = "Jellyfin";
      name = "jellyfin";
      paths = {
      };
      ports = {
        port0 = 8096; # Jellyfin HTTP
        port1 = 8920; # Jellyfin HTTPS
      };
    };
    ollama = {
      label = "Ollama";
      name = "ollama";
      paths = {
        path0 = "/home/${user}/Ollama/Models";
      };
      ports = {
        port0 = 8088; # Open-WebUI (Ollama Front End)
        port1 = 11434; # Ollama API
      };
    };
  };
}
