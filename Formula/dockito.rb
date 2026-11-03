# Written by apps/cli/scripts/release-brew.mjs in dockito-ai/dockito. Don't edit by hand.
class Dockito < Formula
  desc "Publish and share docs and sheets with Dockito from the terminal"
  homepage "https://dockito.ai"
  version "0.0.1-beta.30"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.30/dockito-darwin-arm64.tar.gz"
      sha256 "243f93831fc4eb7d5026099134a4d014714a15d4e59c5c9972362e487f423a61"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.30/dockito-darwin-x64.tar.gz"
      sha256 "610993c4760729bfbfed51fb64200fbc9df1663c6684f891c41326b44aa1fa71"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.30/dockito-linux-arm64.tar.gz"
      sha256 "dce9dd83d4571f96a0ac45e53d5f30e73acb9e73d6d5675ecd6dbe366637a90b"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.30/dockito-linux-x64.tar.gz"
      sha256 "b8836e750364b65b6c8c9d44305bb381b6efcffc5c0d0d1fd6e8e18b6cac950e"
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
