cask "mxr-desktop" do
  version "0.6.180"
  sha256 "666d1bb0a566802dea6e0aac0e3f31b099623774164879f72605efd3bd8707e3"

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
