cask "fafarunner" do
  version "1.0.0+326"
  sha256 "10ca37defd0b3cfb1869a9bd63a6df712fd89514e87ab3244765d2f973a9b5eb"

  url "https://github.com/fafarunner/fafarunner/releases/download/v#{version}/FaFaRunner_#{version}_macos_universal.dmg",
      verified: "github.com/fafarunner/fafarunner/"
  name "FaFa Runner"
  desc "Game developed using flame & bonfire"
  homepage "https://fafarunner.com/"

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
