class GoSend < Formula
  desc "Secure, end-to-end encrypted file sharing with store-and-forward"
  homepage "https://github.com/VinMeld/go-send"
  version "2.1.2"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/VinMeld/go-send/releases/download/v2.1.2/go-send_2.1.2_darwin_arm64.tar.gz"
      sha256 "4af7da3d99f768120c1a4b60c3448578b48af6a4ba3d97be1449950bd0c91f52"
    end
    on_intel do
      url "https://github.com/VinMeld/go-send/releases/download/v2.1.2/go-send_2.1.2_darwin_amd64.tar.gz"
      sha256 "7fd0fc6bcd5b00ab434a647f3d09d64e13127251a63ee1f638969a3aa1fbd35b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VinMeld/go-send/releases/download/v2.1.2/go-send_2.1.2_linux_arm64.tar.gz"
      sha256 "08f9e992b105b7f13866b7ae2ecb0199648fc9637a83ba85c54ea09e510bff39"
    end
    on_intel do
      url "https://github.com/VinMeld/go-send/releases/download/v2.1.2/go-send_2.1.2_linux_amd64.tar.gz"
      sha256 "7f28d13f24a8a43425708d20f03182158b2a5922cbe0eb3587992a0b36ae0c68"
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
