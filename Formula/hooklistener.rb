# typed: false
# frozen_string_literal: true

class Hooklistener < Formula
  desc "Fast, terminal-based CLI for browsing webhooks, forwarding events, and HTTP tunneling"
  homepage "https://hooklistener.com"
  version "0.3.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hooklistener/hooklistener-cli/releases/download/v#{version}/hooklistener-cli-aarch64-apple-darwin.tar.gz"
      sha256 "1666755389321691c2bdc2f75f258ed297eeb86b73a9e5b0ef2194d23543642d"
    end
    on_intel do
      url "https://github.com/hooklistener/hooklistener-cli/releases/download/v#{version}/hooklistener-cli-x86_64-apple-darwin.tar.gz"
      sha256 "bb20b3e4d32ba3550c7c7477074ee559a228204e45b60b48b52860e3d2f46e06"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hooklistener/hooklistener-cli/releases/download/v#{version}/hooklistener-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5f70b3c9bff4a67ebe6c5c1607ee895646b4e844a4320f3b856109f9c21bc0c5"
    end
  end

  def install
    bin.install "hooklistener-cli" => "hooklistener"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hooklistener --version")
  end
end
