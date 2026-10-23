# Written by apps/cli/scripts/release-brew.mjs in dockito-ai/dockito. Don't edit by hand.
class Dockito < Formula
  desc "Publish and share docs and sheets with Dockito from the terminal"
  homepage "https://dockito.ai"
  version "0.0.1-beta.21"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.21/dockito-darwin-arm64.tar.gz"
      sha256 "73398e17b09092e67ccc1c8945fb0f915b5fad930089e7caf2de0817a2fe26b9"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.21/dockito-darwin-x64.tar.gz"
      sha256 "170720cb7ce614fd8d2daa9c96d172a182afd920ce8a4170fbec0ff6317b4287"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.21/dockito-linux-arm64.tar.gz"
      sha256 "4bce102e8bcfbbde424c0716d79b01a23497c8e64fa42f5d23acb747ba6f569e"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.21/dockito-linux-x64.tar.gz"
      sha256 "6660c4710fc49599571f4ec241d7ebc992a507a09e03d8e6c2778f1ee1c123fc"
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
