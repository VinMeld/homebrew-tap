class GoSend < Formula
  desc "Secure, end-to-end encrypted file sharing with store-and-forward"
  homepage "https://github.com/VinMeld/go-send"
  version "2.1.2"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/VinMeld/go-send/releases/download/v2.1.2/go-send_2.1.2_darwin_arm64.tar.gz"
      sha256 "9d938b4105a661f7fb865544aedc906686f186318dba50089d500b98adaa82d6"
    end
    on_intel do
      url "https://github.com/VinMeld/go-send/releases/download/v2.1.2/go-send_2.1.2_darwin_amd64.tar.gz"
      sha256 "c6066618c7c629c22957dd4342733af38679ca474778b218299724abe454e2a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VinMeld/go-send/releases/download/v2.1.2/go-send_2.1.2_linux_arm64.tar.gz"
      sha256 "a6703c5c02d30224f2593f7b3153a79587d94d0b6320bf47cb4d424b0e687d2c"
    end
    on_intel do
      url "https://github.com/VinMeld/go-send/releases/download/v2.1.2/go-send_2.1.2_linux_amd64.tar.gz"
      sha256 "019e292c8304e56e8442c8ec3ec78c3e4bd657c1e8fd0d6dababc25d375af24e"
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
