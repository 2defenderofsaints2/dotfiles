{pkgs, ...}: {
  home.packages = builtins.attrValues {
    inherit
      (pkgs)
      discord
      element-desktop
      openvpn
      signal-desktop
      vesktop
      xdg-utils
      ;
  };
}
