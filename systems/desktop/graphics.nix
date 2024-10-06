{
  pkgs,
  config,
  ...
}: {
  hardware = {
    graphics = {
      enable = true;
      extraPackages = builtins.attrValues {
        inherit
        (pkgs)
        nvidia-vaapi-driver vaapiVdpau;
      };
    };
    nvidia = {
      modesetting.enable = true;
      forceFullCompositionPipeline = false;
      nvidiaSettings = true;
      open = true;

      # Try beta, and if it's cucked, switch this back to production.
      package = config.boot.kernelPackages.nvidiaPackages.beta;
      powerManagement = {
        enable = true;
        finegrained = false;
      };
    };
  };
  services.xserver.videoDrivers = ["nvidia"];
}
