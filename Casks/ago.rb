# Placeholder — update with real DMG URL and checksum on first release.
cask "ago" do
  version "0.0.0"
  sha256 :no_check

  url "https://github.com/yanqianglu/ago/releases/download/v#{version}/ago-mac.dmg"
  name "ago"
  desc "Cross-platform, AI-native backup tool"
  homepage "https://github.com/yanqianglu/ago"

  app "ago.app"

  # Also install CLI binaries bundled in the .app
  binary "ago.app/Contents/MacOS/ago-cli", target: "ago"
end
