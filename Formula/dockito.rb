# Written by apps/cli/scripts/release-brew.mjs in dockito-ai/dockito. Don't edit by hand.
class Dockito < Formula
  desc "Publish and share docs and sheets with Dockito from the terminal"
  homepage "https://dockito.ai"
  version "0.0.1-beta.25"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.25/dockito-darwin-arm64.tar.gz"
      sha256 "f2cc562f843dcc1be9fc408e8bfd62d64fae6b05a2e5e7fdfb58d0be478f7089"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.25/dockito-darwin-x64.tar.gz"
      sha256 "796397d01d7472489878971f2cdaf2b5050482c5a694d53282a0384adff64900"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.25/dockito-linux-arm64.tar.gz"
      sha256 "3a3ddd66bcd38a1b0eb5154f2501a0ad185b91d707ceb97ee2e0c47e0277b7e1"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.25/dockito-linux-x64.tar.gz"
      sha256 "0b53b931962e3a12139443ccff13cfe5322ae2aca51b680353f334c638ab897f"
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
