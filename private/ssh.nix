{ lib, ... }:

{

  options =
    with lib;
    with types;
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
