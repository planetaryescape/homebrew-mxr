cask "mxr-desktop" do
  version "0.6.160"
  sha256 "05bc00032044445ed3d7c2df863e21db884f8c18f3a975a9c5a500c8efce8ccb"

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
