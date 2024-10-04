{flake, ...}: let
  inherit (flake.config.people) user0;
  inherit (flake.config.service.instance.jellyfin) ports;
in {
  services = {
    jellyfin = {
      enable = true;
      openFirewall = true;
      user = user0;
    };
    jellyseerr = {
      openFirewall = true;
      enable = true;
    };
  };

  networking = {
    firewall = {
      allowedTCPPorts = [
        ports.port0
        ports.port1
      ];
    };
  };
}
