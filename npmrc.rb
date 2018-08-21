class Npmrc < Formula
  version "0.1.3"
  desc "A CLI to manage multiple npmrc files"
  homepage "https://github.com/RecuencoJones/npmrc"
  url "https://github.com/RecuencoJones/npmrc/releases/download/#{self.version}/darwin_amd64.tar.gz"
  sha256 "719aa14d3d4db588eaaa72d18d3491c32f85ea204a429836194c6371f0f5ba59"

  def install
      system "mv darwin_amd64/npmrc npmrc"
      bin.install "npmrc"
  end

  test do
    assert_match shell_output("#{bin}/npmrc version").strip, version
  end
end

