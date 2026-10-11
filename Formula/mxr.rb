class Mxr < Formula
  desc "Local-first terminal email client"
  homepage "https://github.com/planetaryescape/mxr"
  version "0.6.80"
  license "MIT OR Apache-2.0"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/planetaryescape/mxr/releases/download/v#{version}/mxr-v#{version}-macos-aarch64.tar.gz"
      sha256 "169ffb2c6817bac92c5034711e0f182fe23bb7919d6ee9242b3596e3141407d6"
    end
  end

  on_linux do
    depends_on "dbus"

    on_intel do
      url "https://github.com/planetaryescape/mxr/releases/download/v#{version}/mxr-v#{version}-linux-x86_64.tar.gz"
      sha256 "2b3b373a4836af32d8551e3c04b4427d9dcd7abc32b8deb99bc32959a7586175"
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
