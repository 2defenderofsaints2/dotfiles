{flake, ...}: let
  inherit (flake) self;
in {
  imports = [
    self.homeModules.commandLine
    self.homeModules.entertainment
    self.homeModules.extras
    self.homeModules.fileManagement
    self.homeModules.internet
    self.homeModules.privacy
    self.homeModules.productionAudio
    self.homeModules.productionVideo
    self.homeModules.productionWriting
  ];
}
