{ buildPythonPackage
, lib
, fetchPypi
}:

buildPythonPackage rec {
  pname = "decli";
  version = "0.6.0";

  src = fetchPypi {
    inherit pname version;
    # nix-prefetch-url --type sha256 --unpack https://files.pythonhosted.org/packages/56/2f/3fc5689255b35918179fee6319fab19e68f8394bb570b963c6afad6265be/decli-0.6.0.tar.gz
    hash = "sha256-0in2r9dr8rim9ayqa2rl0r8ryfxy7m1ss6nizbvqqrmwp5s1ygfh";
  };

  pythonImportsCheck = [ "decli" ];

  meta = with lib; {
    description = "Minimal, easy to use, declarative command line interface tool";
    homepage = "https://github.com/woile/decli";
    license = licenses.mit;
    maintainers = with maintainers; [ lovesegfault ];
  };
}
