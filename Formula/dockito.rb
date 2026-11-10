# Written by apps/cli/scripts/release-brew.mjs in dockito-ai/dockito. Don't edit by hand.
class Dockito < Formula
  desc "Publish and share docs and sheets with Dockito from the terminal"
  homepage "https://dockito.ai"
  version "1.0.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.2/dockito-darwin-arm64.tar.gz"
      sha256 "3c2f6ad542df4e0d0430c9d6e28bc2737e00bd4aed8567a1ccb9a7487d441896"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.2/dockito-darwin-x64.tar.gz"
      sha256 "cdbe984f57e6c83849c204dda8b899ce3473acab3b0609366d5de23900c0657a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.2/dockito-linux-arm64.tar.gz"
      sha256 "87dc5c8b0496e807c5368756178767ca689036c7b727260929fc70794e2aa423"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.2/dockito-linux-x64.tar.gz"
      sha256 "ced2b50a162955375b17239d354c0e3f5816dde1dd4e92f7ed758df559fbf0cd"
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
