with import <nixpkgs> {};
stdenv.mkDerivation rec {
  name = "env";
  env = buildEnv { name = name; paths = buildInputs; };

  buildInputs = [
    platformio
  ];

  shellHook =
    ''
      echo "Build cmd: platformio run -e STM32F103RC_btt"
      echo "Clean cmd: platformio run --target clean -e STM32F103RC_btt"
    '';
}
