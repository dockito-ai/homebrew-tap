# Written by apps/cli/scripts/release-brew.mjs in dockito-ai/dockito. Don't edit by hand.
class Dockito < Formula
  desc "Publish and share docs and sheets with Dockito from the terminal"
  homepage "https://dockito.ai"
  version "1.0.15"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.15/dockito-darwin-arm64.tar.gz"
      sha256 "ff792f5fd439928ef8197056b2347243beebb85ed6b360a975d3756a77643a2e"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.15/dockito-darwin-x64.tar.gz"
      sha256 "7bd97ecb0e50bf00b49b62eb3be0d622f87cdc9a154e3012cbf1c3a1e773fdb2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.15/dockito-linux-arm64.tar.gz"
      sha256 "2a83bd0f918decfe8bda7aa70ec2396268f122db488b482f72f169998c2b0a22"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.15/dockito-linux-x64.tar.gz"
      sha256 "5b529e846a9ad47658d0791e30ac9b0e724bfc346e9b895d7bdcc85b1005346b"
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
