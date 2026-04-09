class Pay < Formula
  desc "CLI for pay — USDC payment infrastructure for AI agents"
  homepage "https://pay-skill.com"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pay-skill/pay-cli/releases/download/v#{version}/pay-macos-arm64"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/pay-skill/pay-cli/releases/download/v#{version}/pay-macos-amd64"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pay-skill/pay-cli/releases/download/v#{version}/pay-linux-arm64"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/pay-skill/pay-cli/releases/download/v#{version}/pay-linux-amd64"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    binary = stable.url.split("/").last
    mv binary, "pay"
    bin.install "pay"
  end

  test do
    system "#{bin}/pay", "--version"
  end
end
