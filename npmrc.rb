class Npmrc < Formula
  version "0.1.4"
  desc "A CLI to manage multiple npmrc files"
  homepage "https://github.com/RecuencoJones/npmrc"
  url "https://github.com/RecuencoJones/npmrc/releases/download/#{self.version}/darwin_amd64.tar.gz"
  sha256 "0d868284146bee6afba0478dbeeca5766e08e5f12621483133eb732a46150c2f"

  def install
      system "mv darwin_amd64/npmrc npmrc"
      bin.install "npmrc"
  end

  test do
    assert_match shell_output("#{bin}/npmrc version").strip, version
  end
end

