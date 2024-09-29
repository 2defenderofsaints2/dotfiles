let
  user0 = "defenderofsaints";
in {
  inherit
    user0
    ;
  user = {
    "${user0}" = {
      name = "defenderofsaints";
      email = {
        address0 = "defenderofsaints2@proton.me";
      };
      domain = {
        url0 = "";
      };
      dns = {
        provider0 = "";
      };
      sshKeys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIL6hzlKgEAafqtpdc5KfmIqW9tSubMyGgKdvVxKKRrjW defenderofsaints@nixos"
      ];
    };
  };
}
