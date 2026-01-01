class GoSend < Formula
  desc "Secure, end-to-end encrypted file sharing with store-and-forward"
  homepage "https://github.com/VinMeld/go-send"
  version "2.1.2"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/VinMeld/go-send/releases/download/v2.1.2/go-send_2.1.2_darwin_arm64.tar.gz"
      sha256 "11181e85f8d146fc22f252cefb5cdbf50bb773940fedb84110fd844a1720b0b9"
    end
    on_intel do
      url "https://github.com/VinMeld/go-send/releases/download/v2.1.2/go-send_2.1.2_darwin_amd64.tar.gz"
      sha256 "9e9f3dd8f4e8433d285aa91c2427f057f85dd7d144b603d2ae3c7e57784309b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VinMeld/go-send/releases/download/v2.1.2/go-send_2.1.2_linux_arm64.tar.gz"
      sha256 "294cabf803965502af89aaf74c6df19286bdc65d687b754db51acfc1165f7ee8"
    end
    on_intel do
      url "https://github.com/VinMeld/go-send/releases/download/v2.1.2/go-send_2.1.2_linux_amd64.tar.gz"
      sha256 "b73815cbc22cd9538e7fe7f0127874413c561a27107dadb083a7f5e13949c2a6"
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
