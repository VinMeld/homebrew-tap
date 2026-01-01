class GoSend < Formula
  desc "Secure, end-to-end encrypted file sharing with store-and-forward"
  homepage "https://github.com/VinMeld/go-send"
  version "2.1.2"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/VinMeld/go-send/releases/download/v2.1.2/go-send_2.1.2_darwin_arm64.tar.gz"
      sha256 "6eee0a5f56915956b55bedbf3f8c757203dd731f0d53ba57aed6d354d8b681de"
    end
    on_intel do
      url "https://github.com/VinMeld/go-send/releases/download/v2.1.2/go-send_2.1.2_darwin_amd64.tar.gz"
      sha256 "e519a9b62621f50ecf93596fe8411d08ce583126d687858ab7dad54db0bdd46f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VinMeld/go-send/releases/download/v2.1.2/go-send_2.1.2_linux_arm64.tar.gz"
      sha256 "de1873bf1c17cdbeda11c3350835cf6bbd32f6a70e35e633cc2a6fef31be9c5b"
    end
    on_intel do
      url "https://github.com/VinMeld/go-send/releases/download/v2.1.2/go-send_2.1.2_linux_amd64.tar.gz"
      sha256 "b0827805896da986d5d8826dabb536fbf9c76c188bba8a20059f9e9a18c4b724"
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
