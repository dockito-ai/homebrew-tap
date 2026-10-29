# Written by apps/cli/scripts/release-brew.mjs in dockito-ai/dockito. Don't edit by hand.
class Dockito < Formula
  desc "Publish and share docs and sheets with Dockito from the terminal"
  homepage "https://dockito.ai"
  version "0.0.1-beta.24"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.24/dockito-darwin-arm64.tar.gz"
      sha256 "f8a09274ae80559a9cd8c2e4f98d12212984b0b1d657692eec771dcf58bbd582"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.24/dockito-darwin-x64.tar.gz"
      sha256 "830e83faf3faeeb0faae33c7e5d96049b9c78f80844b799e1cb4a57d82c71360"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.24/dockito-linux-arm64.tar.gz"
      sha256 "b9e0ec272bab222d15618c2adc5264ff623fb016fcee450158ab9c4e787777d7"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.24/dockito-linux-x64.tar.gz"
      sha256 "7a27a9678f8a538987b8ca9ca60b4a19139ed8a4dffec6ce2479f6addfb405d9"
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
