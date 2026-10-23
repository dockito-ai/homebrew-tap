# Written by apps/cli/scripts/release-brew.mjs in dockito-ai/dockito. Don't edit by hand.
class Dockito < Formula
  desc "Publish and share docs and sheets with Dockito from the terminal"
  homepage "https://dockito.ai"
  version "0.0.1-beta.20"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://dockito.ai/download/cli/0.0.1-beta.20/dockito-darwin-arm64.tar.gz"
      sha256 "2817d5ef08bd712b3af8fb3b3f2988ef5cb87cc6e3ef17a4fc6f6d02cd0609b0"
    end
    on_intel do
      url "https://dockito.ai/download/cli/0.0.1-beta.20/dockito-darwin-x64.tar.gz"
      sha256 "49934566d54e1105555367552966105163a2ba0f7337ca793e1b71b6ffa07b20"
    end
  end

  on_linux do
    on_arm do
      url "https://dockito.ai/download/cli/0.0.1-beta.20/dockito-linux-arm64.tar.gz"
      sha256 "52ca66b7319dcddb865e23ff78e5dec9f9aa177750cc11435ff70e0adb97027e"
    end
    on_intel do
      url "https://dockito.ai/download/cli/0.0.1-beta.20/dockito-linux-x64.tar.gz"
      sha256 "b6878d1075861767733b7f283b7e939b3100c0467052d63f6cd7c298db80da6f"
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
