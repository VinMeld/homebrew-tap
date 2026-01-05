class LeetcodeSr < Formula
  desc "CLI for LeetCode spaced repetition practice"
  homepage "https://github.com/VinMeld/leetcode-space-repition"
  version "2.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.3.3/leetcode-sr_2.3.3_darwin_arm64.tar.gz"
      sha256 "e406482fde706e9bd312466ef4b3c8e11b2b201b5d3b55dbd9ea6570a2f48649"
    end
    on_intel do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.3.3/leetcode-sr_2.3.3_darwin_amd64.tar.gz"
      sha256 "a3e44c1196b38a4e489ebfb915bd95d7ffc0b44530d9d013d2ca31830a43b755"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.3.3/leetcode-sr_2.3.3_linux_arm64.tar.gz"
      sha256 "3701936a04f1b881d4cc15cdc72e8396af9cfaa932230c628b96d1d70d77174f"
    end
    on_intel do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.3.3/leetcode-sr_2.3.3_linux_amd64.tar.gz"
      sha256 "ea3a9d38eab8c0dec23d042876055ff70e7581318dfef8ca0904a40deb0fabca"
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
