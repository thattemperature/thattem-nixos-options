{ lib, ... }:

{

  options =
    let
      inherit (lib) mkOption;
      inherit (lib.types) attrsOf listOf str;
    in
    {
      thattem.private.ssh = {
        known-public-keys = mkOption {
          type = attrsOf str;
          default = { };
        };
        trusted-public-keys = mkOption {
          type = listOf str;
          default = [ ];
        };
      };
    };

}
