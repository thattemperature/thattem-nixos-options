{ lib, ... }:

{

  options =
    with lib;
    with types;
    {
      thattem.private.nix-serve = {
        substituters = mkOption {
          type = listOf str;
          default = [ ];
        };
        trusted-public-keys = mkOption {
          type = listOf str;
          default = [ ];
        };
      };
    };

}
