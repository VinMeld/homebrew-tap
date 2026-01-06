class LeetcodeSr < Formula
  desc "CLI for LeetCode spaced repetition practice"
  homepage "https://github.com/VinMeld/leetcode-space-repition"
  version "2.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.5.0/leetcode-sr_2.5.0_darwin_arm64.tar.gz"
      sha256 "c02805a1ebfe758728d7f7333640025283c07e9e98d2f2da872f31d9c43cade4"
    end
    on_intel do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.5.0/leetcode-sr_2.5.0_darwin_amd64.tar.gz"
      sha256 "f69bbf5c267d4a3cc6e22e5fd096671d9594fa61e3f77c88bd978200ad500ae4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.5.0/leetcode-sr_2.5.0_linux_arm64.tar.gz"
      sha256 "f4de95535fec742fbd42ee85df780b81a14a0df1a8dbe2ac91b01893d5e29f15"
    end
    on_intel do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.5.0/leetcode-sr_2.5.0_linux_amd64.tar.gz"
      sha256 "367b1a18447e47a6408c3620675502256b38e6b3ab79c4d459efb88af4c567f2"
    end
  end

  def install
    bin.install "leetcode-sr"
  end

  test do
    assert_match "leetcode-sr", shell_output("#{bin}/leetcode-sr --help 2>&1")
  end

  def caveats
    <<~EOS
      To get started with leetcode-sr:
        1. Configure: leetcode-sr config
        2. Login: leetcode-sr login
        
      Documentation: https://github.com/VinMeld/leetcode-space-repition
    EOS
  end
end
