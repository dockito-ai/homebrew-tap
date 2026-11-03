# Written by apps/cli/scripts/release-brew.mjs in dockito-ai/dockito. Don't edit by hand.
class Dockito < Formula
  desc "Publish and share docs and sheets with Dockito from the terminal"
  homepage "https://dockito.ai"
  version "1.0.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.0/dockito-darwin-arm64.tar.gz"
      sha256 "d676c788b3f3f46c865087b66981b905e59b64251577c3c6ff4104a43528368a"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.0/dockito-darwin-x64.tar.gz"
      sha256 "9defb617e038e25ca75c6b35040ed307af5dd1933dfdf4d11702b214a58b48dd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.0/dockito-linux-arm64.tar.gz"
      sha256 "2123eee64a83270458ede34961cc03f07be82777cd6c18fce4f90030115b6b19"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.0/dockito-linux-x64.tar.gz"
      sha256 "7c01ea95f0b7c5958920e9ab38a813ba6a6d47ff6c784b4f3f389db4d91958fc"
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
