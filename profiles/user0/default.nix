{
  config,
  flake,
  pkgs,
  ...
}: let
  hostname = config.networking.hostName;
  inherit (flake.config.people) user0;
  inherit (flake.config.people.user.${user0}) name;
in {
  users = {
    users.${user0} = {
      description = name;
      isNormalUser = true;
      shell = pkgs.nushell;
      extraGroups = [
        "adbusers"
        "disk"
        "libvirtd"
        "netdev"
        "networkmanager"
        "ollama"
        "vboxusers"
        "wheel"
      ];
    };
  };
  home-manager.users = {
    ${user0} = {
      home = {
        username = user0;
        homeDirectory = "/home/${user0}";
        file = {
          "./justfile".source = ./justfile;
          "./.steam/steam/steam_dev.cfg".source = ../../nixos/modules/steam/steam_dev.cfg;
        };
        sessionVariables = {};
      };
      imports = [
        {home.stateVersion = config.system.stateVersion;}
        (import ./configs/${hostname}.nix {flake = flake;})
      ];
    };
  };
}
