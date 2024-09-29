{pkgs, ...}: {
  home.packages = builtins.attrValues {
    inherit
      (pkgs)
      flameshot
      gparted
      usbimager
      ;
  };
}
