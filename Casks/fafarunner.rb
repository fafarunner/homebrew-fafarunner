# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "fafarunner" do
  version "1.0.0+286"
  # https://docs.brew.sh/Cask-Cookbook#stanza-sha256
  sha256 :no_check

  # https://docs.brew.sh/Cask-Cookbook#stanza-url
  # https://docs.brew.sh/Cask-Cookbook#when-url-and-homepage-domains-differ-add-verified
  url "https://github.com/fafarunner/fafarunner/releases/download/v#{version}/FaFa.Runner.dmg",
      verified: "github.com/fafarunner/fafarunner/"
  name "FaFa Runner"
  desc "A game developed using flame & bonfire."
  homepage "https://chenyifaer.com/fafarunner"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url :url
    strategy :git do |tags|
      tags.map { |tag|
        match = tag&.match(/^v?(\d+(?:\.\d+)+(\+\d+)?)$/i)
        next if match.blank?
        match[1]
      }.compact
    end
  end

  # https://docs.brew.sh/Cask-Cookbook#stanza-depends_on
  depends_on macos: ">= :catalina"
  depends_on arch: [:x86_64]

  # https://docs.brew.sh/Cask-Cookbook#stanza-app
  app "FaFa Runner.app"

  # https://docs.brew.sh/Cask-Cookbook#stanza-uninstall
  # uninstall quit: "com.kjxbyz.watermarkassistant.mac"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: []
end
