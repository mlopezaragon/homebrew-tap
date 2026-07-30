cask "switchbar" do
  version "1.0.0-beta.4"
  sha256 "f9770f4d22d84644ea6b4dbfe7ddd8ac63dd84588c827ed0c94863bb9cd4c43d"

  url "https://github.com/mlopezaragon/SwitchBar/releases/download/v#{version}/SwitchBar-#{version}.dmg"
  name "SwitchBar"
  desc "Menu bar app that shows usage across Claude Code accounts and switches between them"
  homepage "https://github.com/mlopezaragon/SwitchBar"

  depends_on macos: ">= :tahoe"

  app "SwitchBar.app"

  zap trash: [
    "~/Library/Application Support/ClaudeSwitch",
  ]
end
