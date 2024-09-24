{
  description = "A collection of flake templates";

  outputs = { self, nixpkgs, ... }@inputs:  {
    templates = {
     java21 = {
       path = ./java21;
       description = "A java-flake template";
     };

     node20 = {
       path = ./node20;
       description = "A node-flake template";
     };
    };
  };
}