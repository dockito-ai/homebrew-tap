# Written by apps/cli/scripts/release-brew.mjs in dockito-ai/dockito. Don't edit by hand.
class Dockito < Formula
  desc "Publish and share docs and sheets with Dockito from the terminal"
  homepage "https://dockito.ai"
  version "1.0.9"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.9/dockito-darwin-arm64.tar.gz"
      sha256 "7eed94cfbcb84383ca0664983c1f3ba178ce82a071ddf9c439f9fc8b419df5a9"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.9/dockito-darwin-x64.tar.gz"
      sha256 "6481dc27128fb3377775df6d85f519c8d0ed172b58e4acc38234f26d25d00cd8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.9/dockito-linux-arm64.tar.gz"
      sha256 "97a6eb5d6330d2f5d587f818b7eea066c6af1e0d20b99d3f9daf8b0fbaba6207"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.9/dockito-linux-x64.tar.gz"
      sha256 "2c8a95865f643f0a471f73946efaaba8eaa56ca4f84919fdb2601dcce42602cc"
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
