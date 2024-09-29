{pkgs, ...}: {
  home.packages = builtins.attrValues {
    inherit
      (pkgs)
      gnome-calculator
      gnome-disk-utility
      nautilus
      ;
  };
}
