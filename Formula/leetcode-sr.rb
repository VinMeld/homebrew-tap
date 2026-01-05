class LeetcodeSr < Formula
  desc "CLI for LeetCode spaced repetition practice"
  homepage "https://github.com/VinMeld/leetcode-space-repition"
  version "2.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.2.1/leetcode-sr_2.2.1_darwin_arm64.tar.gz"
      sha256 "c79bc07dcf9e76553b9b609382753e1e2a3d449f7ac4401c13d5a3685648c086"
    end
    on_intel do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.2.1/leetcode-sr_2.2.1_darwin_amd64.tar.gz"
      sha256 "b9eafecc5a2ca20db9622f89f7bddc09c02cd5cfdf63be35e0781f238333d965"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.2.1/leetcode-sr_2.2.1_linux_arm64.tar.gz"
      sha256 "7e0c9c979ccadc86f75812a2dffab5bb086bca7d2b718093333a3d7fe913f71b"
    end
    on_intel do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.2.1/leetcode-sr_2.2.1_linux_amd64.tar.gz"
      sha256 "aa19e534f15f408df9fbb810b8607de58d829149ce4136c0ea1e648b9dfbce53"
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
