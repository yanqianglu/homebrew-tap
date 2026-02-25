# This formula is auto-generated and updated by cargo-dist on each release.
# Manual edits will be overwritten.
class Ago < Formula
  desc "Cross-platform, AI-native backup tool"
  homepage "https://github.com/yanqianglu/ago"
  version "0.0.0"
  license "MIT OR Apache-2.0"

  # Placeholder — cargo-dist will populate URLs and checksums on first release.
  url "https://github.com/yanqianglu/ago"

  def install
    odie "Install ago from a tagged release: brew install yanqianglu/tap/ago"
  end

  def caveats
    <<~EOS
      To also install the macOS app (menu bar + main window):
        brew install --cask yanqianglu/tap/ago
    EOS
  end
end
