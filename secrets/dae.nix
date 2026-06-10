{ lib, ... }:

{

  options =
    let
      inherit (lib) mkOption;
      inherit (lib.types) nullOr str;
    in
    {
      thattem.secrets.dae-configuration.path = mkOption {
        type = nullOr str;
        default = null;
      };
    };

}
