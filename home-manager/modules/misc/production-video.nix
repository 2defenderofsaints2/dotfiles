{pkgs, ...}: {
  home.packages = builtins.attrValues {
    inherit
      (pkgs)
      droidcam
      deskreen
      shotcut
      mathpix-snipping-tool
      ;
  };
}
