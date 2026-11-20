# Written by apps/cli/scripts/release-brew.mjs in dockito-ai/dockito. Don't edit by hand.
class Dockito < Formula
  desc "Publish and share docs and sheets with Dockito from the terminal"
  homepage "https://dockito.ai"
  version "1.0.14"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.14/dockito-darwin-arm64.tar.gz"
      sha256 "decd5785af77c7191de6426e2e18fee0b0f2d749f1ffd35f529e91fc46bd6879"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.14/dockito-darwin-x64.tar.gz"
      sha256 "1eaf79ebb70ffb656518db566dde220c146ffbf2352fc8a8af37c47f50f30d27"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.14/dockito-linux-arm64.tar.gz"
      sha256 "36961245dd32dcc9e523fc3a5fcf53038590833f1f80744cc21c3d79a2978108"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.14/dockito-linux-x64.tar.gz"
      sha256 "2abee79019bd8356385f4b60efeff0e9a353661161b56fc1ac02b9546cb40390"
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
