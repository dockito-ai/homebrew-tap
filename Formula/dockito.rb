# Written by apps/cli/scripts/release-brew.mjs in dockito-ai/dockito. Don't edit by hand.
class Dockito < Formula
  desc "Publish and share docs and sheets with Dockito from the terminal"
  homepage "https://dockito.ai"
  version "0.0.1-beta.28"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.28/dockito-darwin-arm64.tar.gz"
      sha256 "331e226e474668e8a1ea60e683daa568fa83f355992cd7d09075ce62ce8183ec"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.28/dockito-darwin-x64.tar.gz"
      sha256 "0e4c63e49cd3e7db1e2da9d81a94faa98958e4947495493bea294e09ebffbd10"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.28/dockito-linux-arm64.tar.gz"
      sha256 "d6296ceee392f885fba7e17f0baa17c6204642304be6ad306c8ca15477865a22"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.28/dockito-linux-x64.tar.gz"
      sha256 "7592b1840316b04f152d233d26b2b4e9f9a561da946f85e77265520bd653aadb"
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
