{ lib, stdenv, fetchurl }:

stdenv.mkDerivation rec {
  pname = "contextsearch-web-ext";
  version = "1.48.5.4";
  src = fetchurl {
    url = "https://addons.mozilla.org/firefox/downloads/file/5027857/contextsearch_web_ext-1.48.5.4.xpi";
    sha256 = "sha256-5anp689+XdZaeCuwpFIsQpbCAlRNtlrprcdOcqskRMA=";
  };
  dontUnpack = true;
  installPhase = ''
    mkdir -p $out
    cp $src $out/{5dd73bb9-e728-4d1e-990b-c77d8e03670f}.xpi
  '';
  meta = with lib; { license = licenses.mpl20; platforms = platforms.all; };
}
