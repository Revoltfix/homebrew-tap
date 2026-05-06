cask "clarify" do
  version "1.3.2"
  sha256 "84346a55e1367b65e051abb7a6e180a8fd14f1d01e378d0da6d5915c996dbfd1"

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
