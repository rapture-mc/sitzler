{pkgs, ...}:

{
  imports = [
    ./shared-configuration.nix
  ];

  networking.hostName = "STZLR-DWN-ZB01"; # Define your hostname.

  megacorp = {
    config = {
      bootloader = {
        enable = true;
        efi.enable = true;
      };

      users = {
        enable = true;
        admin-user = "sitzler";
      };

      nixvim.enable = true;
      packages.enable = true;
    };

    # services.zabbix = {
    #   agent.enable = true;
    #
    #   server.enable = true;
    # };
  };
}
