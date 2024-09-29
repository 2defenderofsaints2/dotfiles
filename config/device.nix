let
  fillMeSenpai = "uWu";
in {
  device = {
    desktop = {
      label = "Desktop";
      name = "nixos";
      sync = "";
      ip = {
        address0 = "192.168.178.38";
      };
      boot = {
        options = ["fmask=0022" "dmask=0022"];
      };
      storage0 = {
        mount = "/mnt/media/${fillMeSenpai}";
        device = "/dev/disk/by-label/${fillMeSenpai}";
        options = [];
      };
    };
  };
}
