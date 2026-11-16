# Written by apps/cli/scripts/release-brew.mjs in dockito-ai/dockito. Don't edit by hand.
class Dockito < Formula
  desc "Publish and share docs and sheets with Dockito from the terminal"
  homepage "https://dockito.ai"
  version "1.0.8"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.8/dockito-darwin-arm64.tar.gz"
      sha256 "93cd0e0146a20e603eb22427bad66d68f70dac5a3a67fec7ede441b68b0d29fd"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.8/dockito-darwin-x64.tar.gz"
      sha256 "a5be7ce39b4f3a06680b5f0df85454c8d3424622f7daf589cc120ff46734f29d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.8/dockito-linux-arm64.tar.gz"
      sha256 "5c465e990d81a86b790b8e336e29145b16048f8e2d25a1acafef62c33d5127de"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.8/dockito-linux-x64.tar.gz"
      sha256 "2c5de7cb0cf04d030f29f95850be9c19aba34a6866ff13203e51ce24b9e37f5a"
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
