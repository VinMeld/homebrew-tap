class LeetcodeSr < Formula
  desc "CLI for LeetCode spaced repetition practice"
  homepage "https://github.com/VinMeld/leetcode-space-repition"
  version "2.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.2.0/leetcode-sr_2.2.0_darwin_arm64.tar.gz"
      sha256 "5f67dc723b930d28458d203cce3ad97f3dd93fa9a6ebcf4f1daa4fbbdeb5e393"
    end
    on_intel do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.2.0/leetcode-sr_2.2.0_darwin_amd64.tar.gz"
      sha256 "dac58d310927a0f617fa70436dbbb3c7fd3f952c98d9df1745d4e698bdbc9b3a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.2.0/leetcode-sr_2.2.0_linux_arm64.tar.gz"
      sha256 "0f5fbabc56bd2a659c42ab433cbac1c23212b25b79f4d667262bcd002194cd43"
    end
    on_intel do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.2.0/leetcode-sr_2.2.0_linux_amd64.tar.gz"
      sha256 "78a5dbe2bc150ef954b074265d1fd93b7040c5da3fc7d588efbc37570cbf092e"
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
