{ lib, ... }:

{

  options =
    with lib;
    with types;
    {
      private.nix-serve = {
        substituters = mkOption {
          type = listOf str;
          default = [ ];
        };
        trusted-public-keys = mkOption {
          type = listOf str;
          default = [ ];
        };
        secret-key-file = mkOption {
          type = nullOr str;
          default = null;
        };
      };
    };

}
