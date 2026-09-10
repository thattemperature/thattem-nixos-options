{ lib, ... }:

{

  options =
    let
      inherit (lib) mkOption;
      inherit (lib.types) listOf str;
    in
    {
      thattem.private.nix-cache = {
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
