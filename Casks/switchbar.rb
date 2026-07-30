cask "switchbar" do
  version "1.0.0-beta.5"
  sha256 "f6127789dbc37b599edb480c02d60c41071920c0f4105f358a6bf7dae2679819"

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
