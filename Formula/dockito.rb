# Written by apps/cli/scripts/release-brew.mjs in dockito-ai/dockito. Don't edit by hand.
class Dockito < Formula
  desc "Publish and share docs and sheets with Dockito from the terminal"
  homepage "https://dockito.ai"
  version "0.0.1-beta.17"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://dockito.ai/download/cli/0.0.1-beta.17/dockito-darwin-arm64.tar.gz"
      sha256 "b51d33758dcf10467b7e3da98b098d7b34142533c6d4041715ecc5e98c7aa11b"
    end
    on_intel do
      url "https://dockito.ai/download/cli/0.0.1-beta.17/dockito-darwin-x64.tar.gz"
      sha256 "8fc8ecac53adb3a9710fecec24b4d471041556d5b9accd664dfcc227420fd7d4"
    end
  end

  on_linux do
    on_arm do
      url "https://dockito.ai/download/cli/0.0.1-beta.17/dockito-linux-arm64.tar.gz"
      sha256 "214fe8990897f381bd3626d758990f521369c91113fe64bc68d20f34c02a5fa2"
    end
    on_intel do
      url "https://dockito.ai/download/cli/0.0.1-beta.17/dockito-linux-x64.tar.gz"
      sha256 "a7f895c7212b998e1fc297dedb68e4a9f79ec9d1a989ed9578bd6a050c31c5e3"
    end
  end

  def install
    bin.install "dockito"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dockito --version")
  end
end
