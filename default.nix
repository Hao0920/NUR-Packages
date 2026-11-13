{ pkgs }:

{
  glitterdragpro = pkgs.callPackage ./pkgs/glitterdrag-pro { };
  contextsearchwebext = pkgs.callPackage ./pkgs/contextsearch-web-ext { };
}
