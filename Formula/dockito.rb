# Written by apps/cli/scripts/release-brew.mjs in dockito-ai/dockito. Don't edit by hand.
class Dockito < Formula
  desc "Publish and share docs and sheets with Dockito from the terminal"
  homepage "https://dockito.ai"
  version "1.0.16"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.16/dockito-darwin-arm64.tar.gz"
      sha256 "2f2defba438af75090cbc4560b91c3eb463e1399ee7b6721b29c1e133e054531"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.16/dockito-darwin-x64.tar.gz"
      sha256 "3cfe1eedfd4abafc1a164728bf620861facdd14c7f4f9eee6fcb857c6092464a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.16/dockito-linux-arm64.tar.gz"
      sha256 "2e802269797bb73abb3c21de916c09f5257e90a07416efdd4ae74f57c8ae2ba3"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.16/dockito-linux-x64.tar.gz"
      sha256 "59e2a63d2243c21a70b629f9ea8bb476d2a4d219aab847a88ca25d1797b8ce1f"
    end
  end

  def install
    bin.install "dockito"
  end

  def caveats
    <<~EOS
      Run `dockito init` to sign in and teach your AI tools Dockito.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dockito --version")
  end
end
