{pkgs, ...}: {
  environment = {
    enableAllTerminfo = true;
    systemPackages = builtins.attrValues {
      inherit
        (pkgs)
        git
        pijul
        sshfs
        tomb
        virt-manager
        ;
    };
    variables = {
      VIDEO_PLAYER = "vlc";
      EDITOR = "code";
      WLR_NO_HARDWARE_CURSORS = "1";
      WLR_DRM_NO_ATOMIC = "1";
      NIXPKGS_ALLOW_INSECURE = "1";
      NIXPKGS_ALLOW_UNFREE = "1";
    };
  };
}
