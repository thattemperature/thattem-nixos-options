{ lib, ... }:

{

  options =
    let
      inherit (lib) mkOption;
      inherit (lib.types) attrsOf listOf oneOf pathWith str submodule;
    in

    let

      folder-devices-type = listOf (oneOf [
        str
        (submodule {
          options = {
            name = mkOption { type = str; };
            encryptionPasswordFile = mkOption {
              type = pathWith {
                inStore = false;
                absolute = true;
              };
            };
          };
        })
      ]);

    in

    {
      thattem.private.syncthing = {
        devices = mkOption {
          type = attrsOf (attrsOf str);
          default = { };
        };

        default-folder-devices = mkOption {
          type = folder-devices-type;
          default = [ ];
        };
        temporary-folder-devices = mkOption {
          type = folder-devices-type;
          default = [ ];
        };
        archive-folder-devices = mkOption {
          type = folder-devices-type;
          default = [ ];
        };
        secret-folder-devices = mkOption {
          type = folder-devices-type;
          default = [ ];
        };
        secret-folder-2-devices = mkOption {
          type = folder-devices-type;
          default = [ ];
        };
      };
    };

}
