# Written by apps/cli/scripts/release-brew.mjs in dockito-ai/dockito. Don't edit by hand.
class Dockito < Formula
  desc "Publish and share docs and sheets with Dockito from the terminal"
  homepage "https://dockito.ai"
  version "1.0.13"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.13/dockito-darwin-arm64.tar.gz"
      sha256 "56b5735c0b3ca0ca881067742da2a7bfaae4a6a78007c2cf3ca873ab1b1d14c1"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.13/dockito-darwin-x64.tar.gz"
      sha256 "9e04b54b64b72eea74601324926e57d6129ae471b57b39a074610cb6b9396f98"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.13/dockito-linux-arm64.tar.gz"
      sha256 "555648e4805a81d01eb8a05f8cab6f635e619081cb83275e8116b0030938fcac"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.13/dockito-linux-x64.tar.gz"
      sha256 "94a701253fa4ccddce1d368ca7b3ab2f3dae9519d59373fecd8aa74c76501af1"
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
