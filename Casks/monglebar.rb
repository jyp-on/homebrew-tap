cask "monglebar" do
  version "1.1.7,9"
  sha256 "3d6125899b073e4c809ee85364e15f81219fd38cfd2cb3df2df0285071c67e04"

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
