class Mage < Formula
  desc "CLI for scaffolding Clean Layered DDD architecture in Vapor projects"
  homepage "https://github.com/ivantokar/mage"
  url "https://github.com/ivantokar/mage/releases/download/v0.1.0/mage-0.1.0-arm64-apple-darwin.tar.gz"
  sha256 "00a2c1d1b483be871b30179f2ff684c1dc0d77c2fac69147ded914e5ad14ef6f"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "mage"
    bin.install "mage_Mage.bundle"
  end

  test do
    assert_match "A CLI tool for generating", shell_output("#{bin}/mage --help")
  end
end
