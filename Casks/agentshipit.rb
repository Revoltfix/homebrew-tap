cask "agentshipit" do
  version "2.6.0"
  sha256 "98787070501e0d472bba30a80b0f3446d373a9cbed81684247c244f8144d4511"

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

