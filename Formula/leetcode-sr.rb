class LeetcodeSr < Formula
  desc "CLI for LeetCode spaced repetition practice"
  homepage "https://github.com/VinMeld/leetcode-space-repition"
  version "2.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.4.1/leetcode-sr_2.4.1_darwin_arm64.tar.gz"
      sha256 "ec2f6882dbc96bc809ac37ea2bc3852ac891feff8496d069534aec10bdde72fd"
    end
    on_intel do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.4.1/leetcode-sr_2.4.1_darwin_amd64.tar.gz"
      sha256 "417b818199702ba91fb858358e83546a0dd3a0d6707f72e06c47eb55cbb49e27"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.4.1/leetcode-sr_2.4.1_linux_arm64.tar.gz"
      sha256 "c76c1b3cd67c52fd2d06ab862b7c48bcd4c1b792d669243f7e294b3dbdfaa232"
    end
    on_intel do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.4.1/leetcode-sr_2.4.1_linux_amd64.tar.gz"
      sha256 "feae89c202705a576aee9758c75e335f739618e0b96b709fd0a726d6fb079e5c"
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
