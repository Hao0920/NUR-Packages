{ pkgs }:

{
  glitterdrag = pkgs.callPackage ./pkgs/glitterdrag { };
  contextsearchwebext = pkgs.callPackage ./pkgs/contextsearch-web-ext { };
}
