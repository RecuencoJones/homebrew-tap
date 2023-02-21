cask "vizkochos" do
  version "0.1.0"
  name "Vizkochos"
  desc "Visual Kubernetes"
  homepage "https://github.com/RecuencoJones/vizkochos"
  url "https://github.com/RecuencoJones/vizkochos/releases/download/#{self.version}-2023.01.10/Vizkochos-darwin-x64-#{self.version}.zip"
  sha256 :no_check

  app "Vizkochos.app"

  auto_updates false
end
