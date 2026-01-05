class LeetcodeSr < Formula
  desc "CLI for LeetCode spaced repetition practice"
  homepage "https://github.com/VinMeld/leetcode-space-repition"
  version "2.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.1.0/leetcode-sr_2.1.0_darwin_arm64.tar.gz"
      sha256 "0ee12107ffa425d2f3cd6d9e1e278ee9e841ea008335b3b2ea46ccabf240289c"
    end
    on_intel do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.1.0/leetcode-sr_2.1.0_darwin_amd64.tar.gz"
      sha256 "069d11229cb6e56107bf99e7b567179898a0c47602354df5ce4562047c7d93ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.1.0/leetcode-sr_2.1.0_linux_arm64.tar.gz"
      sha256 "bf52972349a671a61872bf3dc39b5961cc551a78ded6b26efd73ef03ff5e0c04"
    end
    on_intel do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.1.0/leetcode-sr_2.1.0_linux_amd64.tar.gz"
      sha256 "95c2621e16263d60dc676b56d2b8abb99fda31b0f16dd46d468f4936445bfd9a"
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
