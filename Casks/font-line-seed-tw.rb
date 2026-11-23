cask "font-line-seed-tw" do
  version "1.400"
  sha256 :no_check

  url "https://seed.line.me/src/images/fonts/LINE_Seed_TW.zip"
  name "LINE Seed TW"
  desc "Traditional Chinese typeface from LINE"
  homepage "https://seed.line.me/index_tw.html"

  livecheck do
    skip "No version information available"
  end

  font "LINE Seed TW_ver02/OTF/LINESeedTW_OTF_Bd.otf"
  font "LINE Seed TW_ver02/OTF/LINESeedTW_OTF_Eb.otf"
  font "LINE Seed TW_ver02/OTF/LINESeedTW_OTF_Rg.otf"
  font "LINE Seed TW_ver02/OTF/LINESeedTW_OTF_Th.otf"

  zap :not_required
end
