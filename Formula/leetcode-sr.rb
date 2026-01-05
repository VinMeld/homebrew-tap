class LeetcodeSr < Formula
  desc "CLI for LeetCode spaced repetition practice"
  homepage "https://github.com/VinMeld/leetcode-space-repition"
  version "2.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.3.0/leetcode-sr_2.3.0_darwin_arm64.tar.gz"
      sha256 "1b7faf651bfe041ba418bb65988414a06d51e4a51b53065dcece466baf541ab1"
    end
    on_intel do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.3.0/leetcode-sr_2.3.0_darwin_amd64.tar.gz"
      sha256 "30dcde71361bd854fc5cea7de32cbc12cff69dc6d642dc5d1e046f864d5f08d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.3.0/leetcode-sr_2.3.0_linux_arm64.tar.gz"
      sha256 "43da26843fafaceff03dc081a12e518170840118ff10167570f76e5425a4e8dd"
    end
    on_intel do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.3.0/leetcode-sr_2.3.0_linux_amd64.tar.gz"
      sha256 "cd24bfe36e57155f571fe317d9c0a8a2736082f5f0f55e4425dec5c675b92685"
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
