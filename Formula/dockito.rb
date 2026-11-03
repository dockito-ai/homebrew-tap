# Written by apps/cli/scripts/release-brew.mjs in dockito-ai/dockito. Don't edit by hand.
class Dockito < Formula
  desc "Publish and share docs and sheets with Dockito from the terminal"
  homepage "https://dockito.ai"
  version "0.0.1-beta.29"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.29/dockito-darwin-arm64.tar.gz"
      sha256 "53f37320440d7670f3ccebb676de2ee725f55ea78b7d103ff60f423011124fbd"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.29/dockito-darwin-x64.tar.gz"
      sha256 "eb8aa0925a9d4344d7585e70b425f97e21b79eafe9da09197a02f2f30493a8f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.29/dockito-linux-arm64.tar.gz"
      sha256 "9eed6a6a4f3566c89905da9bef3e6b3214bcedb821f3337b73732b40b1a9fc18"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.29/dockito-linux-x64.tar.gz"
      sha256 "041aa623d64af2da8e5c534187403fdab57eff0e4ca2fd5d051b5eefeeb3fe4f"
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
