class Fig < Formula
  desc "That is fig: the stupid file manager"
  homepage "https://github.com/theoryzhenkov/fig"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/theoryzhenkov/fig/releases/download/v#{version}/fig-arm64.tar.gz"
      sha256 "cbf3ac4a071efadba910ab8af2f53dcbc68a5c2463ab0872ce2fe6f82a28e2c1"
    end
    on_intel do
      url "https://github.com/theoryzhenkov/fig/releases/download/v#{version}/fig-x86_64.tar.gz"
      sha256 "6e1e2650d372d9433a86e238e488e5c8cb8c4be8da5438fa7f2941bbd3827300"
    end
  end

  def install
    bin.install "fig"
    generate_completions_from_executable(bin/"fig", "completions", shells: [:bash, :zsh, :fish])
  end

  test do
    system bin/"fig", "--help"
    assert_match "complete -c fig", shell_output("#{bin}/fig completions fish")
  end
end
