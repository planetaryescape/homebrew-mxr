class Mxr < Formula
  desc "Local-first terminal email client"
  homepage "https://github.com/planetaryescape/mxr"
  version "0.6.6"
  license "MIT OR Apache-2.0"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/planetaryescape/mxr/releases/download/v#{version}/mxr-v#{version}-macos-aarch64.tar.gz"
      sha256 "55a2a0584f12e8647c60d35d0af5bac10a745c3362b8d5ac901547fc396c1245"
    end
  end

  on_linux do
    depends_on "dbus"

    on_intel do
      url "https://github.com/planetaryescape/mxr/releases/download/v#{version}/mxr-v#{version}-linux-x86_64.tar.gz"
      sha256 "7d26e793a7250c8df7a41fac0d1e561929aca3134accf45c4d32dc9c94078fb4"
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
