class LeetcodeSr < Formula
  desc "CLI for LeetCode spaced repetition practice"
  homepage "https://github.com/VinMeld/leetcode-space-repition"
  version "2.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.1.2/leetcode-sr_2.1.2_darwin_arm64.tar.gz"
      sha256 "f5e4d38ec9d805c61f41d27cead8cafaf13d0b70f6527f5cf2afaf928151661d"
    end
    on_intel do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.1.2/leetcode-sr_2.1.2_darwin_amd64.tar.gz"
      sha256 "e35b306792461b13cff759f7004396dadac5fdf9e8df838212737129373ab5ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.1.2/leetcode-sr_2.1.2_linux_arm64.tar.gz"
      sha256 "514e1cd0682c21fe9ed2734897303918499d3e03f034ecd51419b2d27a1a777e"
    end
    on_intel do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.1.2/leetcode-sr_2.1.2_linux_amd64.tar.gz"
      sha256 "92ef30a857aa6e5fd233bac0651d71a26013ae42280169c1e9c3c84153fb9d63"
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
