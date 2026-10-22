# Written by apps/cli/scripts/release-brew.mjs in dockito-ai/dockito. Don't edit by hand.
class Dockito < Formula
  desc "Publish and share docs and sheets with Dockito from the terminal"
  homepage "https://dockito.ai"
  version "0.0.1-beta.18"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://dockito.ai/download/cli/0.0.1-beta.18/dockito-darwin-arm64.tar.gz"
      sha256 "10de2ec924eb2c83f06d130c1fdeaa4adb8d8b9ced828cda75e3277aeada0fcf"
    end
    on_intel do
      url "https://dockito.ai/download/cli/0.0.1-beta.18/dockito-darwin-x64.tar.gz"
      sha256 "4884c99e812d951ba1d11199d68070d1388bbe0e10e3a613c749b713ab9fcb37"
    end
  end

  on_linux do
    on_arm do
      url "https://dockito.ai/download/cli/0.0.1-beta.18/dockito-linux-arm64.tar.gz"
      sha256 "e4268c6577a66285719a0348deca0015bb9c6034296bf953d1115c7cd7471e3c"
    end
    on_intel do
      url "https://dockito.ai/download/cli/0.0.1-beta.18/dockito-linux-x64.tar.gz"
      sha256 "3e604cf9cf4cd5371dffcdfaabacef97ade57616ad31910bcea66bd64b863c7d"
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
