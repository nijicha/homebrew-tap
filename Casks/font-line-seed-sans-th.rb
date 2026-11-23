cask "font-line-seed-sans-th" do
  version "1.003"
  sha256 :no_check

  url "https://seed.line.me/src/images/fonts/LINE_Seed_Sans_TH.zip"
  name "LINE Seed Sans TH"
  desc "Thai typeface from LINE"
  homepage "https://seed.line.me/index_th.html"

  livecheck do
    skip "No version information available"
  end

  font "LINE_Seed_Sans_TH_V#{version}/Desktop/OTF/LINESeedSansTH_Bd.otf"
  font "LINE_Seed_Sans_TH_V#{version}/Desktop/OTF/LINESeedSansTH_He.otf"
  font "LINE_Seed_Sans_TH_V#{version}/Desktop/OTF/LINESeedSansTH_Rg.otf"
  font "LINE_Seed_Sans_TH_V#{version}/Desktop/OTF/LINESeedSansTH_Th.otf"
  font "LINE_Seed_Sans_TH_V#{version}/Desktop/OTF/LINESeedSansTH_XBd.otf"

  zap :not_required
end
