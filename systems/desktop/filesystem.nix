{
  flake,
  config,
  ...
}: let
  inherit (flake.config.people) user0;
  inherit (flake.config.system.device) desktop;
in {
  fileSystems = {
    # Root and Boot

    "/" = {
      device = "/dev/disk/by-uuid/a70c3134-2596-4070-98a0-68a117b333e8";
      fsType = "ext4";
    };
    "/boot" = {
      device = "/dev/disk/by-uuid/BDCC-DC08";
      fsType = "vfat";
      options = desktop.boot.options;
    };

    # "${desktop.storage0.mount}" = {
    #   device = desktop.storage0.device;
    #   fsType = "ext4";
    #   options = desktop.storage0.options;
    # };

    # "${desktop.storage1.mount}" = {
    #   device = desktop.storage1.device;
    #   fsType = "ext4";
    #   options = desktop.storage1.options;
    # };
  };

  swapDevices = [
    {
      device = "/var/lib/swapfile";
      size = 16 * 1024;
    }
  ];

  systemd.tmpfiles.rules = [
    "Z ${config.home-manager.users.${user0}.home.homeDirectory} 0755 ${user0} users -"
    "Z ${config.home-manager.users.${user0}.home.homeDirectory}/.ssh 0700 ${user0} users -"
  ];
  services.udisks2.enable = true;
}
