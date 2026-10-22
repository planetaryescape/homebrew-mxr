cask "mxr-desktop" do
  version "0.6.142"
  sha256 "67991668d159527b6b0663a49384bb1920aa60c1eba4ed031d59eaf3a150b770"

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
