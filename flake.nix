{
  description = "A collection of flake templates";

  outputs = { self, ... }:  {
    templates = {
     java21 = {
       path = ./java21;
       description = "A java-flake template";
     };

     java23 = {
       path = ./java23;
       description = "A java-flake template";
     };

     node20 = {
       path = ./node20;
       description = "A node-flake template";
     };
    };
  };
}