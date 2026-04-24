{

  description = "Thattemperature's NixOS options";

  outputs =
    { self, ... }:

    {
      nixosModules = {

        default = {
          imports = with self.nixosModules; common.imports ++ private.imports;
        };

        common = {
          imports = [ ./common.nix ];
        };

        private = {
          imports = [ ./private ];
        };

      };
    };

}
