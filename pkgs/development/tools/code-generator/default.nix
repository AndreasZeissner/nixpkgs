{ buildGoModule, fetchFromGitHub, lib }:

buildGoModule rec {
  name = "code-generator-${version}";
  version = "0.20.6-rc.0";

  src = fetchFromGitHub {
    owner = "kubernetes";
    repo = "code-generator";
    rev = "v${version}";
    sha256 = "1r23f8vby29qvbyj538lfsb7qqxgrk7na058k1a85ql3bsilxq4x";
  };

  vendorSha256 = "126p3yfmbbf3238azw9219vnkwdfkfkpzpq6qkhjalimpqiz25fk";

  subPackages = [ ];

  meta = with lib; {
    description = "Golang code-generators used to implement Kubernetes-style API types.";
    homepage = https://github.com/kubernetes/code-generator;
    license = licenses.apsl20;
    maintainers = [ "" ];
    platforms = platforms.linux;
  };
}
