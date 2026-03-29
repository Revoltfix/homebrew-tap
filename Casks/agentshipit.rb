cask "agentshipit" do
  version "3.5.9"
  sha256 "2ea3dd89430a20a7c1a534ffb63bea5236c4d5d74f0c69a35323b997c8f24ebe"

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

