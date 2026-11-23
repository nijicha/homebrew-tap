cask "font-line-seed-sans" do
  version "1.003"
  sha256 :no_check

  url "https://seed.line.me/src/images/fonts/LINE_Seed_Sans_EN.zip"
  name "LINE Seed Sans"
  desc "Geometric Latin typeface from LINE"
  homepage "https://seed.line.me/index_en.html"

  livecheck do
    skip "No version information available"
  end

  font "LINE_Seed_Sans_V#{version}/Desktop/OTF/LINESeedSans_Bd.otf"
  font "LINE_Seed_Sans_V#{version}/Desktop/OTF/LINESeedSans_He.otf"
  font "LINE_Seed_Sans_V#{version}/Desktop/OTF/LINESeedSans_Rg.otf"
  font "LINE_Seed_Sans_V#{version}/Desktop/OTF/LINESeedSans_Th.otf"
  font "LINE_Seed_Sans_V#{version}/Desktop/OTF/LINESeedSans_XBd.otf"

  zap :not_required
end
