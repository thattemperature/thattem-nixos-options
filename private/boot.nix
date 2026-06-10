{ lib, ... }:

{

  options =
    let
      inherit (lib) mkOption;
      inherit (lib.types) enum;
    in
    {
      thattem.private.boot = {
        type = mkOption {
          type = enum [
            "BIOS"
            "UEFI"
          ];
        };
      };
    };

}
