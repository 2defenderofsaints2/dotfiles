{pkgs, ...}: {
  home.packages = builtins.attrValues {
    inherit
      (pkgs)
      reaper
      ardour
      yabridge
      ;
  };
}
