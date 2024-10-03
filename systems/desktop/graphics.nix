{
  pkgs,
  config,
  ...
}: {
  hardware = {
    graphics = {
      enable = true;

      extraPackages = with pkgs; [
        rocm-opencl-icd
        rocm-opencl-runtime
        rocmPackages.clr.icd
      ];
    };
    nvidia = {
      open = false;
      modesetting.enable = true;
      powerManagement.enable = false;
      powerManagement.finegrained = false;
      nvidiaSettings = true;
      package = config.boot.kernelPackages.nvidiaPackages.production;
    };
  };
  services.xserver.videoDrivers = ["nvidia"];
}
