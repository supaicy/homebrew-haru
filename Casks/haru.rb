cask "haru" do
  arch arm: "arm64", intel: "x64"

  version "1.4.1"
  sha256 arm:   "2028b068cc537f665dede8b8081e3c2fd58e559cb7c45a37fefc3f5b4888b8bc",
         intel: "d3444dceeb689f45039124df3ea8759ec844434e34c28cac10f3b699d50feb60"

  url "https://github.com/supaicy/haru/releases/download/v#{version}/haru-#{version}-#{arch}.dmg"
  name "haru"
  desc "TickTick 스타일 일정관리 앱"
  homepage "https://github.com/supaicy/haru"

  depends_on macos: ">= :big_sur"

  app "haru.app"

  zap trash: [
    "~/Library/Application Support/haru",
    "~/Library/Preferences/com.haru.app.plist",
    "~/Library/Saved Application State/com.haru.app.savedState",
  ]
end
