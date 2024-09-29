{pkgs, ...}: {
  home.packages = builtins.attrValues {
    inherit
      (pkgs)
      protonvpn-gui
      qbittorrent
      tor-browser
      ;
  };
}
