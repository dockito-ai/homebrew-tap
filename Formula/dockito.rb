# Written by apps/cli/scripts/release-brew.mjs in dockito-ai/dockito. Don't edit by hand.
class Dockito < Formula
  desc "Publish and share docs and sheets with Dockito from the terminal"
  homepage "https://dockito.ai"
  version "1.0.18"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.18/dockito-darwin-arm64.tar.gz"
      sha256 "ec51f7eb2d70713db51bdc0cd6a97fdfce5e3dbede77ec43998f10997689ef9b"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.18/dockito-darwin-x64.tar.gz"
      sha256 "b5f328ac179339fb6eef3bf24624262c47615fe34e00af067c493259fef728e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.18/dockito-linux-arm64.tar.gz"
      sha256 "505eaa2787cbaf0eb7f0b8cc2ef8e71dbb9a7c8d0b03291b6290513330c8625c"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.18/dockito-linux-x64.tar.gz"
      sha256 "0f330998676b0255c7aae5ab7e3242414a638988e51178bc67d167fcaad413e9"
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
