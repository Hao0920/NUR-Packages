{ lib, stdenv, fetchurl }:

stdenv.mkDerivation rec {
  pname = "glitterdrag-pro";
  version = "2.2.1";
  src = fetchurl {
    url = "https://addons.mozilla.org/firefox/downloads/file/4123267/glitterdrag_pro-2.2.1.xpi";
    sha256 = "sha256-Ihslg6uwIoqFpw4uAerXg6x/e/Ke3jO4QUbOx6kaPys=";
  };
  dontUnpack = true;
  installPhase = ''
    mkdir -p $out
    cp $src $out/glitterdragpro@harytfw.xpi
  '';
  meta = with lib; { license = licenses.mit; platforms = platforms.all; };
}
