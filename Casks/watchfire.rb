cask "watchfire" do
  version "0.8.0"
  sha256 "06027714d21244216e7bb1514c37243433ecf82a82803e550f1221548a327bd2"

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
