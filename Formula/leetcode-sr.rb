class LeetcodeSr < Formula
  desc "CLI for LeetCode spaced repetition practice"
  homepage "https://github.com/VinMeld/leetcode-space-repition"
  version "2.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.1.0/leetcode-sr_2.1.0_darwin_arm64.tar.gz"
      sha256 "3925368930619217ba28cd467fe8355a0e4759059d1bd5b50d8de1efb9b59763"
    end
    on_intel do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.1.0/leetcode-sr_2.1.0_darwin_amd64.tar.gz"
      sha256 "65d641edab4f429e98330af9748afc8a5cb1eeb6abb6c551db02f3c972246e4d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.1.0/leetcode-sr_2.1.0_linux_arm64.tar.gz"
      sha256 "a50e6bf35e647596f927604ec290495f826e2337c2699875e3406b5dc92abd51"
    end
    on_intel do
      url "https://github.com/VinMeld/leetcode-space-repition/releases/download/v2.1.0/leetcode-sr_2.1.0_linux_amd64.tar.gz"
      sha256 "36157a6c98b423199ce15e590f100514c9e9357a9b37efde7706cec31caeb12b"
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
