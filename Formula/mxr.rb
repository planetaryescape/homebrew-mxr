class Mxr < Formula
  desc "Local-first terminal email client"
  homepage "https://github.com/planetaryescape/mxr"
  version "0.6.158"
  license "MIT OR Apache-2.0"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/planetaryescape/mxr/releases/download/v#{version}/mxr-v#{version}-macos-aarch64.tar.gz"
      sha256 "18ae9b9255efc7a8b9c23b0b7541eaf99a45c6f97c13ab54ccc9f6fcbb6c1fd7"
    end
  end

  on_linux do
    depends_on "dbus"

    on_intel do
      url "https://github.com/planetaryescape/mxr/releases/download/v#{version}/mxr-v#{version}-linux-x86_64.tar.gz"
      sha256 "7c7dc127897a7b83e0a4236b37febcf7fb65007767c42f221b1427a6f84f2052"
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
