{ pkgs }:

{
  glitterdrag-pro = pkgs.callPackage ./pkgs/glitterdrag-pro { };
  contextsearch-web-ext = pkgs.callPackage ./pkgs/contextsearch-web-ext { };
}
