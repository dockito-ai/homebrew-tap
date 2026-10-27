# Written by apps/cli/scripts/release-brew.mjs in dockito-ai/dockito. Don't edit by hand.
class Dockito < Formula
  desc "Publish and share docs and sheets with Dockito from the terminal"
  homepage "https://dockito.ai"
  version "0.0.1-beta.22"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.22/dockito-darwin-arm64.tar.gz"
      sha256 "ddcffc236c214a201c6357241056176396d0177ca813f9dcc6d20180d4924e19"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.22/dockito-darwin-x64.tar.gz"
      sha256 "0d513dc7ae7553e7f6b9aab4fed3fe50bde4006ea2f39a36bc737358df0c1493"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.22/dockito-linux-arm64.tar.gz"
      sha256 "6c4db1bedaf96b5d854413048bab2185b40c7dfcd8d742a6a16cc875a4add61d"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.22/dockito-linux-x64.tar.gz"
      sha256 "5002ff91f02beb7406f31cd87c2fae3edfe822b19b4f04e9de312a5cfbe209d0"
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
