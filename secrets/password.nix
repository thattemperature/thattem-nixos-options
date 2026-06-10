{ lib, ... }:

{

  options =
    let
      inherit (lib) mkOption;
      inherit (lib.types) nullOr str;
    in
    {
      thattem.secrets.passwords = {
        users = {
          root.path = mkOption {
            type = nullOr str;
            default = null;
          };
          thattemperature.path = mkOption {
            type = nullOr str;
            default = null;
          };
          programmer.path = mkOption {
            type = nullOr str;
            default = null;
          };
        };
        syncthing.path = mkOption {
          type = nullOr str;
          default = null;
        };
      };
    };

}
