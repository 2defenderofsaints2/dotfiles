{
  time.timeZone = "Germany/Berlin";

  i18n = let
    locale = "de_DE.UTF-8";
    extraSettings = [
      "LC_ADDRESS"
      "LC_IDENTIFICATION"
      "LC_MEASUREMENT"
      "LC_MONETARY"
      "LC_NAME"
      "LC_NUMERIC"
      "LC_PAPER"
      "LC_TELEPHONE"
      "LC_TIME"
    ];
  in {
    defaultLocale = locale;

    extraLocaleSettings = builtins.listToAttrs (
      map (
        option: {
          name = option;
          value = locale;
        }
      )
      extraSettings
    );
  };
}
