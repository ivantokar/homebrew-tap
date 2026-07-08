class Mage < Formula
  desc "CLI for scaffolding Clean Layered DDD architecture in Vapor projects"
  homepage "https://github.com/ivantokar/mage"
  url "https://github.com/ivantokar/mage/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "dc822a5e420271f20b738df2b79d9ef7c8bd5e89b686054238c76192f6f907e2"
  license "MIT"

  depends_on "swift" => :build

  def install
    system "swift", "build", "-c", "release", "--product", "Mage", "--disable-sandbox"
    bin.install ".build/release/Mage" => "mage"
  end

  test do
    assert_match "A CLI tool for generating", shell_output("#{bin}/mage --help")
  end
end
