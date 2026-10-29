# Written by apps/cli/scripts/release-brew.mjs in dockito-ai/dockito. Don't edit by hand.
class Dockito < Formula
  desc "Publish and share docs and sheets with Dockito from the terminal"
  homepage "https://dockito.ai"
  version "0.0.1-beta.23"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.23/dockito-darwin-arm64.tar.gz"
      sha256 "0a72b3d36045c0e0df7d3af6abf64f1bc5dd6d8d9132e2b49d55f265ddd0fcd7"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.23/dockito-darwin-x64.tar.gz"
      sha256 "f25b0fa701ed4b7fe1ce97c41ee5f868c13b64036462867e48f366ccb20022ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.23/dockito-linux-arm64.tar.gz"
      sha256 "c346929758ebdf431e77cc8134ebb3b8498248b989c389e59ae92c90a632a36f"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.23/dockito-linux-x64.tar.gz"
      sha256 "f5e47375eb4728015f5f47cf6507ec2e20eb07f3a64a40ee485f92536bd5a87c"
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
