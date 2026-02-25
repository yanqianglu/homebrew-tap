# This formula is auto-generated and updated by cargo-dist on each release.
# Manual edits will be overwritten.
#
# This installs the CLI only. On macOS, prefer the cask which includes
# the app, CLI, and daemon: brew install --cask yanqianglu/tap/ago
class Ago < Formula
  desc "Cross-platform, AI-native backup tool (CLI only)"
  homepage "https://github.com/yanqianglu/ago"
  version "0.0.0"
  license "MIT OR Apache-2.0"

  # Placeholder — cargo-dist will populate URLs and checksums on first release.
  url "https://github.com/yanqianglu/ago"

  def install
    odie "Install ago from a tagged release: brew install yanqianglu/tap/ago"
  end

  def caveats
    on_macos do
      <<~EOS
        This installed the CLI only. For the full experience (macOS app + daemon):
          brew install --cask yanqianglu/tap/ago
      EOS
    end
  end
end
