{pkgs, ...}: {
  home.packages = builtins.attrValues {
    inherit
      (pkgs)
      flameshot
      pavucontrol
      nomacs
      spotify
      vlc
      ;
  };
}
