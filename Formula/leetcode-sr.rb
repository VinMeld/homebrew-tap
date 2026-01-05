class LeetcodeSr < Formula
  desc "CLI for LeetCode spaced repetition practice"
  homepage "https://github.com/VinMeld/leetcode-space-repition"
  version "2.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.3.1/leetcode-sr_2.3.1_darwin_arm64.tar.gz"
      sha256 "90a0cd7d47da732e12870b1c9b525d398c34501b1726141f61c2e9523a55f5b9"
    end
    on_intel do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.3.1/leetcode-sr_2.3.1_darwin_amd64.tar.gz"
      sha256 "ee559f4815ad44cf481f81c7c213fd29c20fa9b15a71948c56978d80a0f2c630"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.3.1/leetcode-sr_2.3.1_linux_arm64.tar.gz"
      sha256 "f95e01e1e042cb67bcd3dd37658140a842b22cdc0a8ac9e64eba42a6e83afd5d"
    end
    on_intel do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.3.1/leetcode-sr_2.3.1_linux_amd64.tar.gz"
      sha256 "aef0c7f147ed0c9b39dc2d0dbc20626fb962a3b87fdc4ad0be350afcdcd27e7d"
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
