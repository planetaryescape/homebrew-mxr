class Mxr < Formula
  desc "Local-first terminal email client"
  homepage "https://github.com/planetaryescape/mxr"
  version "0.1.0"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/planetaryescape/mxr/releases/download/v0.1.0/mxr-v0.1.0-macos-aarch64.tar.gz"
      sha256 "5bd08fafa279dab5886c3abf21ff407202cf974020942e0d8f0f3773aa031b4e"
    else
      url "https://github.com/planetaryescape/mxr/releases/download/v#{version}/mxr-v#{version}-macos-x86_64.tar.gz"
      sha256 "__SHA256_MACOS_X86_64__"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/planetaryescape/mxr/releases/download/v#{version}/mxr-v#{version}-linux-aarch64.tar.gz"
      sha256 "__SHA256_LINUX_AARCH64__"
    else
      url "https://github.com/planetaryescape/mxr/releases/download/v#{version}/mxr-v#{version}-linux-x86_64.tar.gz"
      sha256 "__SHA256_LINUX_X86_64__"
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
