class Slap < Formula
  desc "Create files and directories with ease - touch, but slappier"
  homepage "https://github.com/theoryzhenkov/slap"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/theoryzhenkov/slap/releases/download/v#{version}/slap-arm64.tar.gz"
      sha256 "79f7ce3809d8cf72f214b248738f617ee83e5c47a4cf5405415b6b77cedd98e7"
    end
    on_intel do
      url "https://github.com/theoryzhenkov/slap/releases/download/v#{version}/slap-x86_64.tar.gz"
      sha256 "c1b90d776f32b0195496c6bee5644c6dfd7003de96f8b12f22192d16b0c075f5"
    end
  end

  def install
    bin.install "slap"
    generate_completions_from_executable(bin/"slap", "completions", shells: [:bash, :zsh, :fish])
  end

  test do
    system bin/"slap", "--help"
    assert_match "complete -c slap", shell_output("#{bin}/slap completions fish")
  end
end
