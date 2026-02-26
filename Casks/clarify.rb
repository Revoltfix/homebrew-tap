cask "clarify" do
  version "1.2.0"
  sha256 "4861d957b6eed19826f0d2ffcd6740d7ea1b4b95ca4821730bc6fd4aca2c0b20"

  url "https://github.com/Revoltfix/clarify/releases/download/v#{version}/Clarify_#{version}_aarch64.dmg"
  name "Clarify"
  desc "Voice dictation, translation & AI chat app"
  homepage "https://github.com/Revoltfix/clarify"

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "Clarify.app"

  zap trash: [
    "~/Library/Application Support/com.revoltfix.voice-dictate",
    "~/Library/Preferences/com.revoltfix.voice-dictate.plist",
  ]
end
