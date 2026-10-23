cask "switchbar" do
  version "1.0.3"
  sha256 "a496925061f2c23d99590e322360f0499e4209424a203749a7731bb566ae6be1"

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
