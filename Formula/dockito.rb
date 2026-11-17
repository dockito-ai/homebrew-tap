# Written by apps/cli/scripts/release-brew.mjs in dockito-ai/dockito. Don't edit by hand.
class Dockito < Formula
  desc "Publish and share docs and sheets with Dockito from the terminal"
  homepage "https://dockito.ai"
  version "1.0.10"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.10/dockito-darwin-arm64.tar.gz"
      sha256 "398ed275f8e7163ac15b69f84654895cd4db2fb9721d166c98b7fcf108e72a9a"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.10/dockito-darwin-x64.tar.gz"
      sha256 "eb9dcf61cdd6a945a7e349535a5498e5d8d6c4e56bb7e6f8b625a20806848ef4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.10/dockito-linux-arm64.tar.gz"
      sha256 "94c1790a9d46146b0ee9491fbc0b1e2d5521927dab82c557fd9e70b3059ab171"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.10/dockito-linux-x64.tar.gz"
      sha256 "f5418b4cfae7b838fc8235c5407c410c3cdaa92796a7f002ae9cb849cd42b2d4"
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
