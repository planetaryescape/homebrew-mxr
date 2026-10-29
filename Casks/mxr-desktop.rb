cask "mxr-desktop" do
  version "0.6.195"
  sha256 "b359fc92518f63bded8bfa20791ea4195a89d05b2f2bc97d98704d878df6d8ad"

  url "https://github.com/planetaryescape/mxr/releases/download/v#{version}/mxr-desktop-#{version}-aarch64.dmg"
  name "mxr"
  desc "Desktop window for the local-first mxr email client"
  homepage "https://github.com/planetaryescape/mxr"

  depends_on arch: :arm64
  depends_on formula: "planetaryescape/mxr/mxr"
  depends_on macos: :monterey

  app "mxr.app"

  zap trash: [
    "~/Library/Application Support/dev.planetaryescape.mxr",
    "~/Library/Caches/dev.planetaryescape.mxr",
    "~/Library/Saved Application State/dev.planetaryescape.mxr.savedState",
    "~/Library/WebKit/dev.planetaryescape.mxr",
  ]
end
