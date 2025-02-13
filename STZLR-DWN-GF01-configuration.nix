_:

{
  imports = [
    ./shared-configuration.nix
  ];

  networking.hostName = "STZLR-DWN-GF01"; # Define your hostname.

  megacorp = {
    config.bootloader = {
      enable = true;
      efi.enable = true;
    };

    services = {
      prometheus = {
        enable = true;
        node-exporter.enable = true;
      };

      grafana = {
        enable = true;
        logo = true;
      };
    };
  };
}
