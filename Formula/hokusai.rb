class Hokusai < Formula
  desc "First-party CLI for Hokusai image operations and benchmarks"
  homepage "https://github.com/ivantokar/hokusai"
  url "https://github.com/ivantokar/hokusai/releases/download/v2.2.1/hokusai-2.2.1-arm64-apple-darwin.tar.gz"
  sha256 "29c6435a8840a498481a92fefca3ae4b3fe4db755fe1e5a65e5253429546c4fd"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on "cairo"
  depends_on "vips"

  def install
    bin.install "hokusai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hokusai --version")
    assert_match "First-party CLI", shell_output("#{bin}/hokusai --help")
  end
end
