{
  description = "A collection of flake templates";

  outputs = { self, ... }:  {
    templates = {
     empty = {
       path = ./empty;
       description = "An empty flake template";
     };

     gng = {
       path = ./gng;
       description = "A gng-flake template";
     };

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

     node22 = {
       path = ./node22;
       description = "A node-flake template";
     };
    };
  };
}