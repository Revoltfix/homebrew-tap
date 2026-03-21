cask "agentshipit" do
  version "3.0.0"
  sha256 "9a6cf4a66edd2c6c046549b8e985591ece29dfe3b63ba4ebb555f53ede82c1b5"

  url "https://github.com/Revoltfix/agentshipit/releases/download/v#{version}/AgentShipIt_#{version}_aarch64.dmg"
  name "AgentShipIt"
  desc "Self-organizing agent orchestration platform"
  homepage "https://github.com/Revoltfix/agentshipit"

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "AgentShipIt.app"

  zap trash: [
    "~/Library/Application Support/com.agentshipit.app",
    "~/Library/Preferences/com.agentshipit.app.plist",
    "~/.agentshipit",
  ]
end

