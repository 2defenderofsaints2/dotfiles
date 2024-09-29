let
  # Folders
  steam = import ./modules/steam;
  # Files
  accounts = import ./modules/accounts.nix;
  android = import ./modules/android.nix;
  audio = import ./modules/audio.nix;
  bluetooth = import ./modules/bluetooth.nix;
  corectrl = import ./modules/corectrl.nix;
  disks = import ./modules/disks.nix;
  doas = import ./modules/doas.nix;
  environment = import ./modules/environment.nix;
  gvfs = import ./modules/gvfs.nix;
  home-manager = import ./modules/home-manager.nix;
  locale = import ./modules/locale.nix;
  network = import ./modules/network.nix;
  nix = import ./modules/nix.nix;
  ollama = import ./modules/ollama.nix;
  plasma = import ./modules/plasma.nix;
  printing = import ./modules/printing.nix;
  sysstat = import ./modules/sysstat.nix;
  system = import ./modules/system.nix;
  virtualization = import ./modules/virtualization.nix;
  xserver = import ./modules/xserver.nix;
in {
  flake = {
    nixosModules = {
      inherit
        accounts
        android
        audio
        bluetooth
        corectrl
        disks
        doas
        environment
        gvfs
        home-manager
        locale
        network
        nix
        ollama
        plasma
        printing
        steam
        sysstat
        system
        virtualization
        xserver
        ;
      desktop = {
        imports = [
          accounts
          android
          audio
          bluetooth
          corectrl
          disks
          doas
          environment
          gvfs
          home-manager
          locale
          nix
          ollama
          plasma
          printing
          steam
          sysstat
          system
          virtualization
          xserver
        ];
      };
    };
  };
}
