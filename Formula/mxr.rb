class Mxr < Formula
  desc "Local-first terminal email client"
  homepage "https://github.com/planetaryescape/mxr"
  version "0.6.25"
  license "MIT OR Apache-2.0"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/planetaryescape/mxr/releases/download/v#{version}/mxr-v#{version}-macos-aarch64.tar.gz"
      sha256 "fc1c7e6acb02c8b45d83bb28e69e25fe3faaca25c0a1bd9aba9fd39840d6ac3b"
    end
  end

  on_linux do
    depends_on "dbus"

    on_intel do
      url "https://github.com/planetaryescape/mxr/releases/download/v#{version}/mxr-v#{version}-linux-x86_64.tar.gz"
      sha256 "8fba8a1bf660d96edc5bbd6d14171ac85fefe6a8d884bc2c87bb6206dbf26d71"
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
