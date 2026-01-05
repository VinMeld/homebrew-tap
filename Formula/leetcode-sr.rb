class LeetcodeSr < Formula
  desc "CLI for LeetCode spaced repetition practice"
  homepage "https://github.com/VinMeld/leetcode-space-repition"
  version "2.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.3.2/leetcode-sr_2.3.2_darwin_arm64.tar.gz"
      sha256 "7b3224f30f8302924ef4f985d9d13f82474a1c11f146e1fc7f99a6b801d709bb"
    end
    on_intel do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.3.2/leetcode-sr_2.3.2_darwin_amd64.tar.gz"
      sha256 "7f179a67dee5c99441731d2d03dedd4438c29e53371272164329b1e0efe7e62b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.3.2/leetcode-sr_2.3.2_linux_arm64.tar.gz"
      sha256 "08454cfe96a23252192398ec6deb53791469635bec54a2b8876adf17450576f5"
    end
    on_intel do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.3.2/leetcode-sr_2.3.2_linux_amd64.tar.gz"
      sha256 "a7e0c0c6ba6aed93ef3fbe4729f349092a18afa8d7245485c1f79efced0289b8"
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
