cask "watchfire" do
  version "5.0.0"
  sha256 "cb582d1f011aee091e9c6b5704445cb10ab51424f51552d3f9a9621887c29261"

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
