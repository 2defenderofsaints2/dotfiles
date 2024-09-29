{
  config,
  flake,
  ...
}: let
  user = config.home.username;
  userConfig = flake.config.people.user.${user};
in {
  programs.git = {
    enable = true;
    userName = userConfig.name;
    userEmail = userConfig.email.address0;
  };
}
