class Mxr < Formula
  desc "Local-first terminal email client"
  homepage "https://github.com/planetaryescape/mxr"
  version "0.6.155"
  license "MIT OR Apache-2.0"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/planetaryescape/mxr/releases/download/v#{version}/mxr-v#{version}-macos-aarch64.tar.gz"
      sha256 "e3d159ae937c1d8c81c52564ba42826b64dbd421d6f6309a62e57047e9ec510c"
    end
  end

  on_linux do
    depends_on "dbus"

    on_intel do
      url "https://github.com/planetaryescape/mxr/releases/download/v#{version}/mxr-v#{version}-linux-x86_64.tar.gz"
      sha256 "232e1bbc7a1b2bc23a06dcbd1dba4e2b47bd61de1343a88a83ef602f7e8b31c1"
    end
  end

  def install
    bin.install "mxr"
    bin.install "mxr-chime-player"
    bin.install "mxr-mailmerge"
    prefix.install "LICENSE-MIT"
    prefix.install "LICENSE-APACHE"
    prefix.install "README.md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mxr version")
  end
end
