# Written by apps/cli/scripts/release-brew.mjs in dockito-ai/dockito. Don't edit by hand.
class Dockito < Formula
  desc "Publish and share docs and sheets with Dockito from the terminal"
  homepage "https://dockito.ai"
  version "1.0.11"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.11/dockito-darwin-arm64.tar.gz"
      sha256 "c342965d3e5a9fbe9fea54d8e9e96b1506adbc587a47793e5bc9568d6983ada2"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.11/dockito-darwin-x64.tar.gz"
      sha256 "9592a2f632f5c9f4359f32839d343a9515cc777622dc6a53d2ad7ac768097790"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.11/dockito-linux-arm64.tar.gz"
      sha256 "633d4cf90d832d54e0354a3ed7f25f3864364e28175e1ce3fade2009ec2f047d"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.11/dockito-linux-x64.tar.gz"
      sha256 "b8351e601b3bc40d83704b5a0d7ce8c6a845b3b7ce5c1cd2813782d892d04c91"
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
