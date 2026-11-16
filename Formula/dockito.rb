# Written by apps/cli/scripts/release-brew.mjs in dockito-ai/dockito. Don't edit by hand.
class Dockito < Formula
  desc "Publish and share docs and sheets with Dockito from the terminal"
  homepage "https://dockito.ai"
  version "1.0.6"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.6/dockito-darwin-arm64.tar.gz"
      sha256 "64fa59fbfae747c43c067fae0d58ca2a2c8b8848a22250d62bf892fbdeaabfff"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.6/dockito-darwin-x64.tar.gz"
      sha256 "f58d6e69a93bb1bd7bbf5522a0de6fccf4c0ac7d5d82aa7d04e17726eb13129e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.6/dockito-linux-arm64.tar.gz"
      sha256 "007a0342eb0fefc605c3356a7a7b0d4ff4cf8035667942f71a5660bdc4bb4979"
    end
    on_intel do
      url "https://github.com/dockito-ai/homebrew-tap/releases/download/v1.0.6/dockito-linux-x64.tar.gz"
      sha256 "08592ba794ca45f8cab9e312bb5e1a110b6dd2115adea74aaea67872350767e7"
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
