class Slap < Formula
  desc "Create files and directories with ease - touch, but slappier"
  homepage "https://github.com/theoryzhenkov/slap"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/theoryzhenkov/slap/releases/download/v#{version}/slap-arm64.tar.gz"
      sha256 "df3f8f3656a707f95e98aeed369a9c497f7a9a26b33a0f8292c8659439016171"
    end
    on_intel do
      url "https://github.com/theoryzhenkov/slap/releases/download/v#{version}/slap-x86_64.tar.gz"
      sha256 "cef95ab9eeca65cb2499058eb10fe1425df416a9dbffbcf6017f1875da51bd5d"
    end
  end

  def install
    bin.install "slap"
  end

  test do
    system bin/"slap", "--help"
  end
end
