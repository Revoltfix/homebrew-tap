cask "agentshipit" do
  version "6.0.17"
  sha256 "ea35752c02a857eb1fe77403a05eb7e835289cd8e4219c7ed509e75830aa04ec"

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

