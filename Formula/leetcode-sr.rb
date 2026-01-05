class LeetcodeSr < Formula
  desc "CLI for LeetCode spaced repetition practice"
  homepage "https://github.com/VinMeld/leetcode-space-repition"
  version "2.0.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.0.6/leetcode-sr_2.0.6_darwin_arm64.tar.gz"
      sha256 "928835c8920a320d79e2cf6619ee196bfc23ffe34f52fdf0fbb8889f4c197853"
    end
    on_intel do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.0.6/leetcode-sr_2.0.6_darwin_amd64.tar.gz"
      sha256 "c5368a892bae9c67439c9b84b0c832acc0ce9cc34ac1b1e8a381d3172cdff2a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.0.6/leetcode-sr_2.0.6_linux_arm64.tar.gz"
      sha256 "f6024116f7d70bb48ff91ef2b4111bef84505af3249f07ef2ebfd0968bf11bd4"
    end
    on_intel do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.0.6/leetcode-sr_2.0.6_linux_amd64.tar.gz"
      sha256 "273cac794606630c24e64c07e120d4638df668224987e019de3bf3e51ac9b32d"
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
