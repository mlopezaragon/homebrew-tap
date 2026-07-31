cask "switchbar" do
  version "1.0.0-beta.9"
  sha256 "6889824451c109e45aa662025b191b8d7775e999b1b283387a293db3084d8b73"

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
