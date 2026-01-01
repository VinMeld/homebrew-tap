class GoSend < Formula
  desc "Secure, end-to-end encrypted file sharing with store-and-forward"
  homepage "https://github.com/VinMeld/go-send"
  version "2.1.2"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/VinMeld/go-send/releases/download/v2.1.2/go-send_2.1.2_darwin_arm64.tar.gz"
      sha256 "79949bfa90c9fe224649f97f21f781ee64b183cca4d12845140bc73b8fd2fd6a"
    end
    on_intel do
      url "https://github.com/VinMeld/go-send/releases/download/v2.1.2/go-send_2.1.2_darwin_amd64.tar.gz"
      sha256 "9ba64e2ea2b34945fa3382b8b97d0797d01a35a8cb827de3f334985bb791949b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VinMeld/go-send/releases/download/v2.1.2/go-send_2.1.2_linux_arm64.tar.gz"
      sha256 "df2f220ae965b84c9e34d1eb978d2e8d6dbb3dfbe6a066378f665ee1da9b703b"
    end
    on_intel do
      url "https://github.com/VinMeld/go-send/releases/download/v2.1.2/go-send_2.1.2_linux_amd64.tar.gz"
      sha256 "0737d5ae5d0716dba4348f3ccf5aeb7a478a175dffa5019f6533ced5f86e176b"
    end
  end

  def install
    bin.install "go-send"
  end

  test do
    assert_match "go-send", shell_output("#{bin}/go-send --help 2>&1")
  end

  def caveats
    <<~EOS
      To get started with go-send:
        1. Initialize: go-send config init --user <username>
        2. Set server: go-send set-server <server-url>
        3. Register: go-send register --token <token>
        
      Documentation: https://github.com/VinMeld/go-send
    EOS
  end
end
