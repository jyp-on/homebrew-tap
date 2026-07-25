cask "monglebar" do
  version "1.1.6,8"
  sha256 "1a97bc0bc683809e99647e928a44940833018689306057e81584b1a844ca8e15"

  url "https://monglebar.vercel.app/downloads/MongleBar-#{version.csv.first}.dmg"
  name "MongleBar"
  name "몽글바"
  desc "Menu bar tamagotchi that shows Claude usage limits"
  homepage "https://monglebar.vercel.app/"

  livecheck do
    url "https://monglebar.vercel.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "MongleBar.app"

  zap trash: [
    "~/Library/Caches/com.jyp.monglebar",
    "~/Library/HTTPStorages/com.jyp.monglebar",
    "~/Library/Preferences/com.jyp.monglebar.plist",
  ]
end
