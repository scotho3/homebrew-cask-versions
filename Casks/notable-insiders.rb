cask "notable-insiders" do
  version "1.9.0-beta.9"
  sha256 "ae8f279d25befbb71f673eb279e7c8f12bc0503518c2501894e6e69d0c92b68c"

  url "https://github.com/notable/notable-insiders/releases/download/v#{version}/Notable-#{version}-universal.dmg",
      verified: "github.com/notable/notable-insiders/"
  name "Notable Insiders"
  desc "Markdown-based note-taking app that doesn't suck"
  homepage "https://notable.app/"

  auto_updates true

  app "Notable.app"

  zap trash: [
    "~/Library/Saved Application State/com.fabiospampinato.notable.savedState",
    "~/Library/Preferences/com.fabiospampinato.notable.plist",
    "~/Library/Application Support/Notable",
    "~/.notable.json",
  ]
end