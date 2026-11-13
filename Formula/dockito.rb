# Written by apps/cli/scripts/release-brew.mjs in dockito-ai/dockito. Don't edit by hand.
class Dockito < Formula
  desc "Publish and share docs and sheets with Dockito from the terminal"
  homepage "https://dockito.ai"
  version "1.0.5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.5/dockito-darwin-arm64.tar.gz"
      sha256 "809e723d5d6738814a20fbfe78276bb1264fdea5649b5c95b859514d44d2d6fe"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.5/dockito-darwin-x64.tar.gz"
      sha256 "1304279a05572fe08007984f468cd7627c07b6a7abbdd429f486d0ac888ef623"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.5/dockito-linux-arm64.tar.gz"
      sha256 "c6cff96511c4f3b5570b38b82ec3f24b765ad445f00e7d53f5be2b14de82801b"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.5/dockito-linux-x64.tar.gz"
      sha256 "aad2278ae4b8bf13d873a267f0474b9db4cb43fd8c24ff7897a022f6055ff6b3"
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
