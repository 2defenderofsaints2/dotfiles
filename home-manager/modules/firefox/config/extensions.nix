{nur, ...}:
builtins.attrValues {
  inherit
    (nur.repos.rycee.firefox-addons)
    localcdn
    sponsorblock
    ublock-origin
    windscribe
    ;
}
# https://github.com/nix-community/nur-combined/blob/master/repos/rycee/pkgs/firefox-addons/generated-firefox-addons.nix

