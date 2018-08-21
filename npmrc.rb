class Npmrc < Formula
  version = "0.1.2"
  desc "A CLI to manage multiple npmrc files"
  homepage "https://github.com/RecuencoJones/npmrc"
  url "https://github.com/RecuencoJones/npmrc/releases/download/#{version}/darwin_amd64.tar.gz"
  sha256 "6c2ff515e1a38d5dc71af89da8471d7c532080dc3ad44dc7984b5286aca4d00c"

  def install
      system "mv darwin_amd64/npmrc npmrc"
      bin.install "npmrc"
  end

  test do
    system "#{bin}/plank", "help"
  end
end

