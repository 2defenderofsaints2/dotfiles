{lib, ...}: let
  deviceNames = [
    "desktop"
  ];
  instanceNames = [
    "example"
  ];
  userNames = [
    "user0"
  ];
  stringType = lib.mkOption {
    type = lib.types.str;
  };
  intType = lib.mkOption {
    type = lib.types.int;
  };
  listType = lib.mkOption {
    type = lib.types.listOf lib.types.str;
  };

  numOptions = 20;

  genOptions = config: prefix:
    builtins.listToAttrs (
      map
      (i: {
        name = "${prefix}${toString i}";
        value = config;
      })
      (builtins.genList (i: i) numOptions)
    );
in let
  peopleSubmodule = lib.types.submodule {
    options =
      builtins.listToAttrs (
        map
        (name: {
          inherit name;
          value = stringType;
        })
        userNames
      )
      // {
        user = lib.mkOption {
          type = lib.types.attrsOf userSubmodule;
        };
      };
  };
  userSubmodule = lib.types.submodule {
    options = {
      name = stringType;
      sshKeys = listType;
      group = stringType;
      email = genOptions stringType "address";
      domain = genOptions stringType "url";
      dns = genOptions stringType "provider";
    };
  };
  serviceSubmodule = lib.types.submodule {
    options =
      builtins.listToAttrs (
        map
        (name: {
          inherit name;
          value = stringType;
        })
        instanceNames
      )
      // {
        instance = lib.mkOption {
          type = lib.types.attrsOf instanceSubmodule;
        };
      };
  };
  instanceSubmodule = lib.types.submodule {
    options = {
      domain = stringType;
      label = stringType;
      name = stringType;
      paths = genOptions stringType "path";
      ports = genOptions intType "port";
      ssl = {
        cert = stringType;
        key = stringType;
      };
    };
  };
  systemSubmodule = lib.types.submodule {
    options =
      builtins.listToAttrs (
        map
        (name: {
          inherit name;
          value = stringType;
        })
        deviceNames
      )
      // {
        device = lib.mkOption {
          type = lib.types.attrsOf deviceSubmodule;
        };
      };
  };
  deviceSubmodule = let
    mountConfig = {
      mount = stringType;
      device = stringType;
      options = listType;
    };
  in
    lib.types.submodule {
      options =
        {
          boot = mountConfig;
          ip = genOptions stringType "address";
          label = stringType;
          name = stringType;
          sync = stringType;
        }
        // genOptions mountConfig "folder"
        // genOptions mountConfig "samba"
        // genOptions mountConfig "storage";
    };
in {
  options = {
    service = lib.mkOption {
      type = serviceSubmodule;
    };
    system = lib.mkOption {
      type = systemSubmodule;
    };
    people = lib.mkOption {
      type = peopleSubmodule;
    };
  };

  config = {
    people = import ./user.nix;
    service = import ./instance.nix;
    system = import ./device.nix;
  };
}
