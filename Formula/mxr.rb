class Mxr < Formula
  desc "Local-first terminal email client"
  homepage "https://github.com/planetaryescape/mxr"
  version "0.5.2"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/planetaryescape/mxr/releases/download/v#{version}/mxr-v#{version}-macos-aarch64.tar.gz"
      sha256 "ec8a25fc7e0ad144466597447e9b29c842e89b32196fce9e7ce1dc18ffd7d444"
    end

    on_intel do
      url "https://github.com/planetaryescape/mxr/releases/download/v#{version}/mxr-v#{version}-macos-x86_64.tar.gz"
      sha256 "5c2b785cd25da4d6f11b10fa5a18e10da28366a386e3e27362e219397a186fa3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/planetaryescape/mxr/releases/download/v#{version}/mxr-v#{version}-linux-x86_64.tar.gz"
      sha256 "23066514e87911d835fad2d85a1bccf8bf8a2122d64e8986f7b46492e3a6d50a"
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
