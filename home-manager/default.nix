let
  # Folders
  firefox = import ./modules/firefox;
  # Files
  bat = import ./modules/bat.nix;
  bottom = import ./modules/bottom.nix;
  brave = import ./modules/brave.nix;
  direnv = import ./modules/direnv.nix;
  freetube = import ./modules/freetube.nix;
  git = import ./modules/git.nix;
  home-manager = import ./modules/home-manager.nix;
  misc-android = import ./modules/misc/android.nix;
  misc-commandLine = import ./modules/misc/command-line.nix;
  misc-fileManagement = import ./modules/misc/file-management.nix;
  misc-gaming = import ./modules/misc/gaming.nix;
  misc-gnomeExtras = import ./modules/misc/gnome-extras.nix;
  misc-internet = import ./modules/misc/internet.nix;
  misc-kdeExtras = import ./modules/misc/kde-extras.nix;
  misc-media = import ./modules/misc/media.nix;
  misc-privacy = import ./modules/misc/privacy.nix;
  misc-productionAudio = import ./modules/misc/production-audio.nix;
  misc-productionVideo = import ./modules/misc/production-video.nix;
  misc-productionWriting = import ./modules/misc/production-writing.nix;
  misc-virtualization = import ./modules/misc/virtualization.nix;
  misc-yazi = import ./modules/misc/yazi.nix;
  nushell = import ./modules/nushell.nix;
  obs-studio = import ./modules/obs-studio.nix;
  starship = import ./modules/starship.nix;
  vscode = import ./modules/vscode.nix;
  wezterm = import ./modules/wezterm.nix;
  yazi = import ./modules/yazi.nix;
  zellij = import ./modules/zellij.nix;
  zoxide = import ./modules/zoxide.nix;
in {
  flake.homeModules = {
    inherit
      # Folders
      firefox
      # Files
      
      bat
      bottom
      brave
      direnv
      freetube
      git
      home-manager
      misc-android
      misc-commandLine
      misc-fileManagement
      misc-gaming
      misc-gnomeExtras
      misc-internet
      misc-kdeExtras
      misc-media
      misc-privacy
      misc-productionAudio
      misc-productionVideo
      misc-productionWriting
      misc-virtualization
      misc-yazi
      nushell
      obs-studio
      starship
      vscode
      wezterm
      yazi
      zellij
      zoxide
      ;
    commandLine = {
      imports = [
        bat
        bottom
        direnv
        git
        home-manager
        misc-android
        misc-commandLine
        misc-virtualization
        misc-yazi
        nushell
        starship
        wezterm
        yazi
        zellij
        zoxide
      ];
    };
    entertainment = {
      imports = [
        misc-gaming
        misc-media
        freetube
      ];
    };
    extras = {
      imports = [
        misc-gnomeExtras
        misc-kdeExtras
      ];
    };
    fileManagement = {
      imports = [
        misc-fileManagement
        vscode
      ];
    };
    internet = {
      imports = [
        brave
        firefox
        misc-internet
      ];
    };
    privacy = {
      imports = [
        misc-privacy
      ];
    };
    productionAudio = {
      imports = [
        misc-productionAudio
      ];
    };
    productionVideo = {
      imports = [
        misc-productionVideo
        obs-studio
      ];
    };
    productionWriting = {
      imports = [
        misc-productionWriting
      ];
    };
  };
}
