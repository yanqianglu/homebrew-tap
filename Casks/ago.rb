# Placeholder — update URLs and sha256 on first release.
cask "ago" do
  version "0.0.0"
  sha256 :no_check

  url "https://github.com/yanqianglu/ago/releases/download/v#{version}/ago-mac.dmg"
  name "ago"
  desc "Cross-platform, AI-native backup tool — macOS app, CLI, and daemon"
  homepage "https://github.com/yanqianglu/ago"

  depends_on macos: ">= :ventura"

  # macOS app → /Applications
  app "ago.app"

  # CLI + daemon binaries bundled inside the app → symlinked to PATH
  binary "#{appdir}/ago.app/Contents/Resources/bin/ago", target: "ago"
  binary "#{appdir}/ago.app/Contents/Resources/bin/ago-daemon", target: "ago-daemon"

  postflight do
    # Ensure the CLI is immediately available
    system_command "/bin/ln", args: ["-sf", "#{appdir}/ago.app/Contents/Resources/bin/ago", "/usr/local/bin/ago"], sudo: false
  end

  uninstall quit: "dev.ago.app"

  zap trash: [
    "~/Library/Application Support/ago",
    "~/Library/Preferences/dev.ago.app.plist",
    "~/Library/Caches/dev.ago.app",
  ]
end
