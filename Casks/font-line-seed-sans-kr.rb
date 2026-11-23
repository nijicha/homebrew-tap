cask "font-line-seed-sans-kr" do
  version "2023.09.06"
  sha256 :no_check

  url "https://seed.line.me/src/images/fonts/LINE_Seed_Sans_KR.zip"
  name "LINE Seed Sans KR"
  desc "Korean typeface from LINE"
  homepage "https://seed.line.me/index_kr.html"

  livecheck do
    skip "No version information available"
  end

  font "LINE_SeedKR_#{version}/OTF/LINESeedKR-Bd.otf"
  font "LINE_SeedKR_#{version}/OTF/LINESeedKR-Rg.otf"
  font "LINE_SeedKR_#{version}/OTF/LINESeedKR-Th.otf"

  zap :not_required
end
