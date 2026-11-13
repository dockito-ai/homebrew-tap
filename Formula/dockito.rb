# Written by apps/cli/scripts/release-brew.mjs in dockito-ai/dockito. Don't edit by hand.
class Dockito < Formula
  desc "Publish and share docs and sheets with Dockito from the terminal"
  homepage "https://dockito.ai"
  version "1.0.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.4/dockito-darwin-arm64.tar.gz"
      sha256 "ffd9c5afa772b9d35562da5dd0a8aa7d071b8b9c700e2aa9d48a0d0f5042ef44"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.4/dockito-darwin-x64.tar.gz"
      sha256 "0601e276e462f048c4002cbd12a56adf0d17d6f0dba756a322ca70fb3aac4501"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.4/dockito-linux-arm64.tar.gz"
      sha256 "787df0602c8bd0f22c2c645b0c51e2729865465c1088c49950b2b8f0b9763c63"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.4/dockito-linux-x64.tar.gz"
      sha256 "6a45b7ee3dfab0d763afe1424c5331a0fc17ebc92d696c5b88484e58a8bda5ce"
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
