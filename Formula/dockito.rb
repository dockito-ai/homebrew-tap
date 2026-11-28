# Written by apps/cli/scripts/release-brew.mjs in dockito-ai/dockito. Don't edit by hand.
class Dockito < Formula
  desc "Publish and share docs and sheets with Dockito from the terminal"
  homepage "https://dockito.ai"
  version "1.0.19"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.19/dockito-darwin-arm64.tar.gz"
      sha256 "6f12d2866734edb41189c0a942ab2c4cb9af41208a8a294e336f46e2df3ea16e"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.19/dockito-darwin-x64.tar.gz"
      sha256 "2029dbb5296ec593e5795b92bf10c7027970deeb5b2fbbab2b006f680cbb9687"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.19/dockito-linux-arm64.tar.gz"
      sha256 "9eb1326a58e5ae5e8f21a11c01ea2de774b6cd2827321812b448be2e1647ef1f"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.19/dockito-linux-x64.tar.gz"
      sha256 "9e29647c91917b401e5228efba9da1f93aa143f3c5955c5e2486830bf8463eea"
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
