let
  user = "defenderofsaints";
in {
  instance = {
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
