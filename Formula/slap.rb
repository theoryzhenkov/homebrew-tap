class Slap < Formula
  desc "Create files and directories with ease - touch, but slappier"
  homepage "https://github.com/theoryzhenkov/slap"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/theoryzhenkov/slap/releases/download/v#{version}/slap-arm64.tar.gz"
      sha256 "b072f0a998da68d278950a7aa3a86faff884190e2e5f6ac35e8a0a446364da6b"
    end
    on_intel do
      url "https://github.com/theoryzhenkov/slap/releases/download/v#{version}/slap-x86_64.tar.gz"
      sha256 "0bd9c084eb6f4be94477c0348cb118c880278034ea892820746bbd836d76d426"
    end
  end

  def install
    bin.install "slap"
  end

  test do
    system bin/"slap", "--help"
  end
end
