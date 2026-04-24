{ lib, ... }:

{

  options =
    with lib;
    with types;

    let

      firmware-type = enum [
        "common"
        "intel"
        "nvidia"
        "amd"
      ];

    in

    {
      private.firmware = {
        cpu = mkOption {
          type = firmware-type;
          default = "common";
        };
        gpu = mkOption {
          type = firmware-type;
          default = "common";
        };
      };
    };

}
