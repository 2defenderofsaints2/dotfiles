{
  pkgs,
  config,
  ...
}: {
  devShells = {
    default = pkgs.mkShell {
      packages = builtins.attrValues {
        inherit
          (pkgs)
          alejandra
          just
          nil
          ;
      };
      shellHook = "${config.pre-commit.installationScript}";
    };
  };
}
