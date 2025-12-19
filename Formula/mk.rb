class Mk < Formula
  desc "Create files and directories with ease"
  homepage "https://github.com/theoryzhenkov/mk"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/theoryzhenkov/mk/releases/download/v#{version}/mk-arm64.tar.gz"
      sha256 "2745ba3df32dc7d2652cc6492c7dcc934fc672ed70f8c52b56928191cb4ad2b5"
    end
    on_intel do
      url "https://github.com/theoryzhenkov/mk/releases/download/v#{version}/mk-x86_64.tar.gz"
      sha256 "83926a7412a5467f5e3fd962513c53901dbe5c5240134353b60944c76aeb41c1"
    end
  end

  def install
    bin.install "mk"
  end

  test do
    system bin/"mk", "--help"
  end
end
