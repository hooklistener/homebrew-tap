# typed: false
# frozen_string_literal: true

class Hooklistener < Formula
  desc "Fast, terminal-based CLI for browsing webhooks, forwarding events, and HTTP tunneling"
  homepage "https://hooklistener.com"
  version "0.3.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hooklistener/hooklistener-cli/releases/download/v#{version}/hooklistener-cli-aarch64-apple-darwin.tar.gz"
      sha256 "d623436f49a0dd353fc1cdd9ddbfad3539495086252a8c4cf91fd769a797a2b6"
    end
    on_intel do
      url "https://github.com/hooklistener/hooklistener-cli/releases/download/v#{version}/hooklistener-cli-x86_64-apple-darwin.tar.gz"
      sha256 "7e7e0f6548800f1f8d6fc834c7ca3d8c9c83c077d9191cc188ec6729be8c6647"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hooklistener/hooklistener-cli/releases/download/v#{version}/hooklistener-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0028f50294b887db50b88a7d74f347321723d3ac86897aa40874cfeac572be6c"
    end
  end

  def install
    bin.install "hooklistener-cli" => "hooklistener"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hooklistener --version")
  end
end
