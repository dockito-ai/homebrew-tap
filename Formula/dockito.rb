# Written by apps/cli/scripts/release-brew.mjs in dockito-ai/dockito. Don't edit by hand.
class Dockito < Formula
  desc "Publish and share docs and sheets with Dockito from the terminal"
  homepage "https://dockito.ai"
  version "1.0.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.1/dockito-darwin-arm64.tar.gz"
      sha256 "7887f2b75bbfa4660a88b6b62ddbd0ea6732d70e5f2cdc9342b803f873bcd1ed"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.1/dockito-darwin-x64.tar.gz"
      sha256 "aec2e43d06ddc1b9115dd4cd9a71cb545424a209eff517db91df4ee64eb4ed07"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.1/dockito-linux-arm64.tar.gz"
      sha256 "2bb79f3905f493cf93574f8e759d5e3ddb65919a3aa9f806f8a47f973a4924d0"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.1/dockito-linux-x64.tar.gz"
      sha256 "c4c3783e86f103d44fba7b54ee02c0ccf106526db2e87d824006cc4659d4d750"
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
