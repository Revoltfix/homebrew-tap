cask "agentshipit" do
  version "6.0.2"
  sha256 "933f82c649592a702b6deb776415a9fc17b29df6c9a5be9bd17d0cc0c3291ab1"

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

