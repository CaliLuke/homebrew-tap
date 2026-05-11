class Lagotto < Formula
  desc "Sniff out Go layout smells"
  homepage "https://github.com/CaliLuke/lagotto"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CaliLuke/lagotto/releases/download/v0.1.1/lagotto_0.1.1_darwin_arm64.tar.gz"
      sha256 "76438b5045cd76a0ae3d822f854e2c45cbe19cd2f019e4fe4ca7e62e03f65f26"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CaliLuke/lagotto/releases/download/v0.1.1/lagotto_0.1.1_darwin_amd64.tar.gz"
      sha256 "6cd56f3e333f246815ef5d317c4158293ecd599621092ad7c4114522ec4e93de"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CaliLuke/lagotto/releases/download/v0.1.1/lagotto_0.1.1_linux_arm64.tar.gz"
      sha256 "b607151ca4f44dfa769b970b5290420a1032d16a9591c6ee3b8857ebb19006b2"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CaliLuke/lagotto/releases/download/v0.1.1/lagotto_0.1.1_linux_amd64.tar.gz"
      sha256 "fd0cdd9115899eda8ef0ff0d9a0b82528af254e067a03fe89621a92f905db835"
    end
  end

  def install
    bin.install "lagotto"
  end

  test do
    system "#{bin}/lagotto", "--version"
  end
end
