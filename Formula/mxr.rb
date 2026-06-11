class Mxr < Formula
  desc "Local-first terminal email client"
  homepage "https://github.com/planetaryescape/mxr"
  version "0.5.62"
  license "MIT OR Apache-2.0"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/planetaryescape/mxr/releases/download/v#{version}/mxr-v#{version}-macos-aarch64.tar.gz"
      sha256 "e20c28fda6bbf45b51053f5ed4bce5059736c558ce2b4cf57941fb8a77c1432d"
    end
  end

  on_linux do
    depends_on "dbus"

    on_intel do
      url "https://github.com/planetaryescape/mxr/releases/download/v#{version}/mxr-v#{version}-linux-x86_64.tar.gz"
      sha256 "4731d6b33bb87f8b3e888fcc51c7d03ba8370467fd1a655ecd991ef2c9a75a21"
    end
  end

  def install
    bin.install "mxr"
    bin.install "mxr-chime-player"
    prefix.install "LICENSE-MIT"
    prefix.install "LICENSE-APACHE"
    prefix.install "README.md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mxr version")
  end
end
