# Written by apps/cli/scripts/release-brew.mjs in dockito-ai/dockito. Don't edit by hand.
class Dockito < Formula
  desc "Publish and share docs and sheets with Dockito from the terminal"
  homepage "https://dockito.ai"
  version "1.0.12"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.12/dockito-darwin-arm64.tar.gz"
      sha256 "71cc931459d830c17c98743abe8fb368870d60df221d677a136ab990b7cb5626"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.12/dockito-darwin-x64.tar.gz"
      sha256 "b4069cc4ac7da97f54d8b88d831727fe79238fd7406f1f7ad79c77938339cdc2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.12/dockito-linux-arm64.tar.gz"
      sha256 "03b5ea8fff3306d4a2ae8855b84c9e29be506a9f84a3cb44fb03ea8a90bf58e6"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.12/dockito-linux-x64.tar.gz"
      sha256 "8611ea4fca002cee0c6d819f784f340b68f95fd5d2f3de5e6d2503f29311ced6"
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
