# Written by apps/cli/scripts/release-brew.mjs in dockito-ai/dockito. Don't edit by hand.
class Dockito < Formula
  desc "Publish and share docs and sheets with Dockito from the terminal"
  homepage "https://dockito.ai"
  version "0.0.1-beta.27"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.27/dockito-darwin-arm64.tar.gz"
      sha256 "1e2acc87269f4e5dff1f45f7a2a0038448309017664ff0a7c931bacf1b70094c"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.27/dockito-darwin-x64.tar.gz"
      sha256 "e6bd44eb0e9051497633dafe1205eb68f8aa9b7cfa1d85c670aa4f0f3e272387"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.27/dockito-linux-arm64.tar.gz"
      sha256 "952af8e0b8aed5cc8e653b187298828d707c0b6a221c95db8a3f3aeb2a6e054f"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.27/dockito-linux-x64.tar.gz"
      sha256 "19249e972517bfebcfe0d687e0689657bc295d6fd4bab7ce8712ddbd2f4e7f0b"
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
