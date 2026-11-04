cask "switchbar" do
  version "1.6.0"
  sha256 "ab3924a063ecb243eb1b467d92be36daa4a42608ce460c1dbac0af744e6d6764"

  url "https://github.com/mlopezaragon/SwitchBar/releases/download/v#{version}/SwitchBar-#{version}.dmg"
  name "SwitchBar"
  desc "Menu bar app that shows usage across Claude Code accounts and switches between them"
  homepage "https://github.com/mlopezaragon/SwitchBar"

  depends_on macos: ">= :sonoma"

  app "SwitchBar.app"

  zap trash: [
    "~/Library/Application Support/ClaudeSwitch",
  ]
end
