# Written by apps/cli/scripts/release-brew.mjs in dockito-ai/dockito. Don't edit by hand.
class Dockito < Formula
  desc "Publish and share docs and sheets with Dockito from the terminal"
  homepage "https://dockito.ai"
  version "1.0.17"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.17/dockito-darwin-arm64.tar.gz"
      sha256 "8d75a997d6ff16eca19378e1cbd0e0d3c9a3b7d98410969333a8d4fe713a864f"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.17/dockito-darwin-x64.tar.gz"
      sha256 "0ce79e09f8eeca941014f7286aa7d72300f34804c12454e30472caaa9e832606"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.17/dockito-linux-arm64.tar.gz"
      sha256 "2c9f0ac8d519c339e0bf5ff33a14d92539518869cf2b5508645e035f016200f9"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.17/dockito-linux-x64.tar.gz"
      sha256 "ac53a3e0af903de88be8c089a1542e408f7b2970c0af28d6bd14ecd80ec35793"
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
