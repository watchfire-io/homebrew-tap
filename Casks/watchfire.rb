cask "watchfire" do
  version "4.0.0"
  sha256 "bb5febd2a1fbb8a8b9300676ec40720e0b00d07ed8923647e4ac6e7861eeccd1"

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
