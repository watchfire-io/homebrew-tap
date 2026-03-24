cask "watchfire" do
  version "0.6.0"
  sha256 "6b3505fdb544b07de9eaa254f3f8f9153c4fb18095c8756bc6bc332a45043db0"

  url "https://github.com/watchfire-io/watchfire/releases/download/v#{version}/Watchfire-#{version}-universal.dmg"
  name "Watchfire"
  desc "Orchestrator for AI coding agents"
  homepage "https://github.com/watchfire-io/watchfire"

  app "Watchfire.app"

  # Symlink CLI binaries from the app bundle into Homebrew bin
  binary "#{appdir}/Watchfire.app/Contents/Resources/watchfire"
  binary "#{appdir}/Watchfire.app/Contents/Resources/watchfired"

  zap trash: [
    "~/.watchfire",
  ]
end
