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
      modesetting.enable = true;
      powerManagement.enable = false;
      powerManagement.finegrained = false;
      nvidiaSettings = true;
      package = config.boot.kernelPackages.nvidiaPackages.stable;
    };
  };
  # boot.initrd.kernelModules = ["nvidia"];
}
