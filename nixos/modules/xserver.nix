{
  services = {
    xserver = {
      enable = true;
      xkb.layout = "de";
    };
    libinput = {
      enable = true;
      touchpad = {
        tapping = true;
        naturalScrolling = false;
      };
      mouse.accelProfile = "flat";
      touchpad.accelProfile = "flat";
    };
  };
  console.useXkbConfig = true;
}
