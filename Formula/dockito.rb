# Written by apps/cli/scripts/release-brew.mjs in dockito-ai/dockito. Don't edit by hand.
class Dockito < Formula
  desc "Publish and share docs and sheets with Dockito from the terminal"
  homepage "https://dockito.ai"
  version "0.0.1-beta.26"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.26/dockito-darwin-arm64.tar.gz"
      sha256 "5181ff55a4175f7c5881dd4a57f5ebb050a535f5a7fcb3856e3967e66a36d281"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.26/dockito-darwin-x64.tar.gz"
      sha256 "08ea9d6110ef7f74cdf846e688a4c7d8c0ec90428b886bfa0cbc878978cc08d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.26/dockito-linux-arm64.tar.gz"
      sha256 "ce32f628381635cb07213e44015d184df8bbab179e5a8bf27f10994e2ba0351f"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v0.0.1-beta.26/dockito-linux-x64.tar.gz"
      sha256 "38100e61eb9ebeb14bf0232f5e79545806b84ac6ff5845be2fc388eb6c46566a"
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
