{

  description = "Thattemperature's NixOS options";

  outputs =
    { self, ... }:

    {
      nixosModules = {

        default = {
          imports =
            with self.nixosModules;
            common.imports ++ packages.imports ++ private.imports ++ secrets.imports;
        };

        common = {
          imports = [ ./common.nix ];
        };

        packages = {
          imports = [ ./packages.nix ];
        };

        private = {
          imports = [ ./private ];
        };

        secrets = {
          imports = [ ./secrets ];
        };

      };
    };

}
