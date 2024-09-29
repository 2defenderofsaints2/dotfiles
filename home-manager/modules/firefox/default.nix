{
  pkgs,
  config,
  nur,
  ...
}: {
  programs.firefox = {
    enable = true;
    package = pkgs.firefox;
    profiles = let
      user = config.home.username;
    in {
      ${user} = {
        isDefault = true;
        search = import ./config/search.nix;
        bookmarks = import ./config/bookmarks.nix;
        settings = import ./config/settings.nix;
        extensions = import ./config/extensions.nix {inherit nur;};
        userChrome = builtins.readFile ./config/userChrome.css;
      };
    };
  };
}
