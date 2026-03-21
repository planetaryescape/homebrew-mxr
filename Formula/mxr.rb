class Mxr < Formula
  desc "Local-first terminal email client"
  homepage "https://github.com/planetaryescape/mxr"
  version "0.4.5"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/planetaryescape/mxr/releases/download/v#{version}/mxr-v#{version}-macos-aarch64.tar.gz"
      sha256 "69f27e7923de59f670203dd730baddad1e3ee5453dc09b1af7acef1c04b767f5"
    end

    on_intel do
      url "https://github.com/planetaryescape/mxr/releases/download/v#{version}/mxr-v#{version}-macos-x86_64.tar.gz"
      sha256 "788b656dea533f6b526ad2a984407a6d9defc4d74059fe46cdf37edb2130e5b2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/planetaryescape/mxr/releases/download/v#{version}/mxr-v#{version}-linux-x86_64.tar.gz"
      sha256 "6f76f8ce702ba46df5926d4722daa82fbf84b9b3355ad7762bc4f42953b5c71b"
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
