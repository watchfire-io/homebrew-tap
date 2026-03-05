cask "watchfire" do
  version "0.1.2"
  sha256 "ade0559ad70975e919a3c2f28f5d7ef567193edbc1687db7a2b23f754cab16c7"

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
