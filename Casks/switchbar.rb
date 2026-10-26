cask "switchbar" do
  version "1.4.0"
  sha256 "dec8e3c090c52eafe38d2d236dcabca1d7bc194d19e8bfe37645798c01b74b7f"

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
