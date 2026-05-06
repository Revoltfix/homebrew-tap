cask "clarify" do
  version "1.3.0"
  sha256 "304bd7bb9d273fc3de51ed1f730db97a2e3e7d3a9d9428955a1c485d84c827da"

  url "https://github.com/Revoltfix/clarify/releases/download/v#{version}/Clarifyer_#{version}_aarch64.dmg"
  name "Clarifyer"
  desc "Voice dictation, translation & AI chat app"
  homepage "https://github.com/Revoltfix/clarify"

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "Clarifyer.app"

  zap trash: [
    "~/Library/Application Support/com.revoltfix.clarifyer",
    "~/Library/Preferences/com.revoltfix.clarifyer.plist",
  ]
end
