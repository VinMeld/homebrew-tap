class LeetcodeSr < Formula
  desc "CLI for LeetCode spaced repetition practice"
  homepage "https://github.com/VinMeld/leetcode-space-repition"
  version "2.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.1.1/leetcode-sr_2.1.1_darwin_arm64.tar.gz"
      sha256 "6e7c9b33161b0bfe8617393eb9779a081fbbdaeadf234e86c022c5fac8b55486"
    end
    on_intel do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.1.1/leetcode-sr_2.1.1_darwin_amd64.tar.gz"
      sha256 "bfcf675ce1600e2ae761b06a50b14a487f9e4dbd2081679514467dd3ae23d859"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.1.1/leetcode-sr_2.1.1_linux_arm64.tar.gz"
      sha256 "062f4843b40201bf5603ad4e8efe6252e0c57557d45cfc925b6d90d9516e86af"
    end
    on_intel do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.1.1/leetcode-sr_2.1.1_linux_amd64.tar.gz"
      sha256 "3095be64c7bb398cc3fee57bc884b362cb3e484815e017122f7444831d45f350"
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
