cask "clarify" do
  version "1.1.9"
  sha256 "9b8125b3a9f23bc2e3e4a74ec4845dbd8158a76697875a8193f422c6ea2aef88"

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
