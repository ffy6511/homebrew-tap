class AhtCli < Formula
  desc "CLI for Adjust Heading in Tree"
  homepage "https://github.com/ffy6511/Adjust-heading-in-tree"
  url "https://registry.npmjs.org/@jhzhuo/aht-cli/-/aht-cli-0.4.2.tgz"
  sha256 "e2ca812887e9ca55ec53f0879c53eefffcec319dc865f4ab1f3ee5a029a172c2"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "CLI for Adjust Heading in Tree", shell_output("#{bin}/aht --help")
  end
end
