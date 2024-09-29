{
  hardware.printers = {
    ensurePrinters = [
      {
        name = "Example";
        location = "Office";
        deviceUri = "http://some.ip";
        model = "drv:///sample.drv/generic.ppd";
        ppdOptions = {
          PageSize = "Letter";
        };
      }
    ];
    ensureDefaultPrinter = "Example";
  };
}
