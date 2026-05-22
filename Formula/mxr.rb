class Mxr < Formula
  desc "Local-first terminal email client"
  homepage "https://github.com/planetaryescape/mxr"
  version "0.5.33"
  license "MIT OR Apache-2.0"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/planetaryescape/mxr/releases/download/v#{version}/mxr-v#{version}-macos-aarch64.tar.gz"
      sha256 "03ba4ede7be6049c4f78e71cf2d11e13fc864f115241f77385324b9c03b85631"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/planetaryescape/mxr/releases/download/v#{version}/mxr-v#{version}-linux-x86_64.tar.gz"
      sha256 "6b55ed1fc8616f2e43b6f236959664de56b07f437c62f29f531c72a250662db1"
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
