# typed: false
# frozen_string_literal: true

class Hooklistener < Formula
  desc "Fast, terminal-based CLI for browsing webhooks, forwarding events, and HTTP tunneling"
  homepage "https://hooklistener.com"
  version "0.3.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hooklistener/hooklistener-cli/releases/download/v#{version}/hooklistener-cli-aarch64-apple-darwin.tar.gz"
      sha256 "7e2539440ec613c3fedd518d7f131dd91f9df997dfb51ec744961fb73e68e633"
    end
    on_intel do
      url "https://github.com/hooklistener/hooklistener-cli/releases/download/v#{version}/hooklistener-cli-x86_64-apple-darwin.tar.gz"
      sha256 "c723a3edc985b569e852175848f3015e9be9247d0202d2232e7546d07a40fde5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hooklistener/hooklistener-cli/releases/download/v#{version}/hooklistener-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5bc9623ba4909826cfcad38223f8b38af7f5f1ba7885afcafdd3da465493ae88"
    end
  end

  def install
    bin.install "hooklistener-cli" => "hooklistener"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hooklistener --version")
  end
end
