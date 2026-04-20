class Hokusai < Formula
  desc "First-party CLI for Hokusai image operations and benchmarks"
  homepage "https://github.com/ivantokar/hokusai"
  url "https://github.com/ivantokar/hokusai/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "c71065736beaa16839eeadc3161788ca173a6402b7b8fb898d3478f319450bbc"
  license "MIT"

  depends_on "swift" => :build
  depends_on "pkg-config" => :build
  depends_on "vips"

  def install
    system "swift", "build", "-c", "release", "--product", "hokusai"
    bin.install ".build/release/hokusai"
  end

  test do
    assert_match "First-party CLI", shell_output("#{bin}/hokusai --help")
  end
end
