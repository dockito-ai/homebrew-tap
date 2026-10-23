# Written by apps/cli/scripts/release-brew.mjs in dockito-ai/dockito. Don't edit by hand.
class Dockito < Formula
  desc "Publish and share docs and sheets with Dockito from the terminal"
  homepage "https://dockito.ai"
  version "0.0.1-beta.19"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://dockito.ai/download/cli/0.0.1-beta.19/dockito-darwin-arm64.tar.gz"
      sha256 "4f916e31357182b558290a844079b249a871ddcde78d2567b22fe157ff9c1dab"
    end
    on_intel do
      url "https://dockito.ai/download/cli/0.0.1-beta.19/dockito-darwin-x64.tar.gz"
      sha256 "e1f618499972fcd9247bd17460a0a72792b50bbfd85788144f346ef59aca7449"
    end
  end

  on_linux do
    on_arm do
      url "https://dockito.ai/download/cli/0.0.1-beta.19/dockito-linux-arm64.tar.gz"
      sha256 "8515aebca9c827116ce584078ecd697f755cf292dcf5094894a4fe0e81d6152e"
    end
    on_intel do
      url "https://dockito.ai/download/cli/0.0.1-beta.19/dockito-linux-x64.tar.gz"
      sha256 "6bb2b138f0aa47eef278be64c19f040fe196df9b6564abce5d34e344c438f09e"
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
