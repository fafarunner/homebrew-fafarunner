cask "fafarunner" do
  version "1.0.0+335"
  sha256 "e8f4055b285c0355c0524587696e296929f46b65e030f20f862e6c8e1416bf6f"

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
