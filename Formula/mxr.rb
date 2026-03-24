class Mxr < Formula
  desc "Local-first terminal email client"
  homepage "https://github.com/planetaryescape/mxr"
  version "0.4.22"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/planetaryescape/mxr/releases/download/v#{version}/mxr-v#{version}-macos-aarch64.tar.gz"
      sha256 "88db0c4d8f0d7d0e1f400e08da04a93953c6712e10df19b0d34b8ee7163e461e"
    end

    on_intel do
      url "https://github.com/planetaryescape/mxr/releases/download/v#{version}/mxr-v#{version}-macos-x86_64.tar.gz"
      sha256 "87b90e2bc56ac932598df6ec5e73b7dbf0463fd7568577a0e14e81333f718141"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/planetaryescape/mxr/releases/download/v#{version}/mxr-v#{version}-linux-x86_64.tar.gz"
      sha256 "3b02db095dca880ed31622ce49099c47da0022209f22cce10cc027088cc511c8"
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
