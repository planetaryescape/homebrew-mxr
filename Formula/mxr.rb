class Mxr < Formula
  desc "Local-first terminal email client"
  homepage "https://github.com/planetaryescape/mxr"
  version "0.4.61"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/planetaryescape/mxr/releases/download/v#{version}/mxr-v#{version}-macos-aarch64.tar.gz"
      sha256 "c269e9ee1af4fc1beab407cd8f9318b3a9b47f496389f57e292aa48be7e1df2d"
    end

    on_intel do
      url "https://github.com/planetaryescape/mxr/releases/download/v#{version}/mxr-v#{version}-macos-x86_64.tar.gz"
      sha256 "c84cb557878251a041bb7e093e354ce6198227ad2e07f925b2a3f59b2d33b43b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/planetaryescape/mxr/releases/download/v#{version}/mxr-v#{version}-linux-x86_64.tar.gz"
      sha256 "7c72708998e4d8612535b6396fcb08c049717370f36007cc4747a892a532f4bc"
    end
  end

  def install
    bin.install "mxr"
    prefix.install "LICENSE-MIT"
    prefix.install "LICENSE-APACHE"
    prefix.install "README.md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mxr version")
  end
end
