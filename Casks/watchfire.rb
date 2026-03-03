cask "watchfire" do
  version "0.1.0"
  sha256 "PLACEHOLDER"

  url "https://github.com/watchfire-io/watchfire/releases/download/v#{version}/Watchfire-#{version}.dmg"
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
