# Written by apps/cli/scripts/release-brew.mjs in dockito-ai/dockito. Don't edit by hand.
class Dockito < Formula
  desc "Publish and share docs and sheets with Dockito from the terminal"
  homepage "https://dockito.ai"
  version "1.0.7"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.7/dockito-darwin-arm64.tar.gz"
      sha256 "f02d872032ec8c43e1fe40ae7ea016571275d9953cf4f141526c101df6b0d43e"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.7/dockito-darwin-x64.tar.gz"
      sha256 "b3c46fe1f68fa7c5a27f2993b29c057ddf4796b0643c4b8f6270ea90a23331e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.7/dockito-linux-arm64.tar.gz"
      sha256 "0b0e1feb63ed56423f67e8e5596d589746883c265b28f29dbde323b42fc73477"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.7/dockito-linux-x64.tar.gz"
      sha256 "1229f531332b83e31e8e203a6630a32417038034d84442f83ef6c145a975a951"
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
