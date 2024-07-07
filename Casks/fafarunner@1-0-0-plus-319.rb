cask "fafarunner@1-0-0-plus-319" do
  version "1.0.0+319"
  sha256 "69a24fe6c5fa24a2b0ae0a3cc2f8df968f70edb1dd6902e98c891a7fd7315041"

  url "https://github.com/fafarunner/fafarunner/releases/download/v#{version}/FaFaRunner_#{version}_macos_universal.dmg",
      verified: "github.com/fafarunner/fafarunner/"
  name "FaFa Runner"
  desc "Game developed using flame & bonfire"
  homepage "https://chenyifaer.com/fafarunner"

  livecheck do
    url :url
    strategy :git do |tags|
      tags.filter_map do |tag|
        match = tag&.match(/^v?(\d+(?:\.\d+)+(\+\d+)?)$/i)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on macos: ">= :catalina"

  app "FaFa Runner.app"

  zap trash: [
    "~/Library/Application Support/FaFa Runner",
    "~/Library/Caches/com.chenyifaer.fafarunner.mac",
    "~/Library/Caches/FaFa Runner",
    "~/Library/Preferences/com.chenyifaer.fafarunner.mac.plist",
    "~/Library/Saved Application State/com.chenyifaer.fafarunner.mac.savedState",
  ]
end
