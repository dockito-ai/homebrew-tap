# Written by apps/cli/scripts/release-brew.mjs in dockito-ai/dockito. Don't edit by hand.
class Dockito < Formula
  desc "Publish and share docs and sheets with Dockito from the terminal"
  homepage "https://dockito.ai"
  version "1.0.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.3/dockito-darwin-arm64.tar.gz"
      sha256 "aeebd7cd7c252f5bad327d8f20f1676871213ac9b7fbc70e134a0aed934eab0c"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.3/dockito-darwin-x64.tar.gz"
      sha256 "590e8afd9e74213c3abe730ffcc0474c677cacea711ae548f42598e2de2c64fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.3/dockito-linux-arm64.tar.gz"
      sha256 "ebe930dfe168c04a21ac706c874d96769536a7bb42bbf2098be5d77d2ad456a0"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.3/dockito-linux-x64.tar.gz"
      sha256 "8cb9a05ad7916805e2a177bcf8d08aab679e0f9f5657da114f4aad642e35fa73"
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
