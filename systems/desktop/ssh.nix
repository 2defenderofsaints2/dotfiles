{flake, ...}: let
  inherit (flake.config.people) user0;
  inherit (flake.config.people.user.${user0}) sshKeys;
in {
  users.users.${user0} = {
    openssh.authorizedKeys.keys = sshKeys;
  };
}
