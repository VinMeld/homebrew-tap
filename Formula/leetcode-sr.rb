class LeetcodeSr < Formula
  desc "CLI for LeetCode spaced repetition practice"
  homepage "https://github.com/VinMeld/leetcode-space-repition"
  version "2.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.4.0/leetcode-sr_2.4.0_darwin_arm64.tar.gz"
      sha256 "9497b25e396a56b7137daf94ea403788996155e7c2778f74dd40059ebb4cd179"
    end
    on_intel do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.4.0/leetcode-sr_2.4.0_darwin_amd64.tar.gz"
      sha256 "b6fdb733eed9bbfee6715b49fff3692e9ccbcfecff1503f68b0cb45e7e73c4f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.4.0/leetcode-sr_2.4.0_linux_arm64.tar.gz"
      sha256 "8667a21979effcba371c55f4e21f93e55c0c0aa7f52503df1475d2377c0bad91"
    end
    on_intel do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.4.0/leetcode-sr_2.4.0_linux_amd64.tar.gz"
      sha256 "ac5c1bdf5ed74320ad4bef4ff8a00058dff04f95112c90889e9e9ab5ba91db93"
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
