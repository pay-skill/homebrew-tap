class Remit < Formula
  desc "CLI for the Remit universal payment protocol — USDC payments for AI agents"
  homepage "https://remit.md"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/remit-md/remit-cli/releases/download/v#{version}/remit-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/remit-md/remit-cli/releases/download/v#{version}/remit-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/remit-md/remit-cli/releases/download/v#{version}/remit-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/remit-md/remit-cli/releases/download/v#{version}/remit-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "remit"
  end

  test do
    system "#{bin}/remit", "--version"
  end
end
