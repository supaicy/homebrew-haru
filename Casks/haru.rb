cask "haru" do
  version "1.4.0"
  sha256 "0f2fe030a1dd7f4503f27fa1e79e44675157278cb38793998fd50f0adcfee4c9"

  url "https://github.com/supaicy/haru/releases/download/v#{version}/haru.dmg"
  name "haru"
  desc "TickTick 스타일 일정관리 앱"
  homepage "https://github.com/supaicy/haru"

  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "haru.app"

  zap trash: [
    "~/Library/Application Support/haru",
    "~/Library/Preferences/com.haru.app.plist",
    "~/Library/Saved Application State/com.haru.app.savedState",
  ]
end
