# typed: false
# frozen_string_literal: true

class Hooklistener < Formula
  desc "Fast, terminal-based CLI for browsing webhooks, forwarding events, and HTTP tunneling"
  homepage "https://hooklistener.com"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hooklistener/hooklistener-cli/releases/download/v#{version}/hooklistener-cli-aarch64-apple-darwin.tar.gz"
      sha256 "55614b17d4965badc05799e775c00fe64bb05f23eba79290d619c7f16ce69e33"
    end
    on_intel do
      url "https://github.com/hooklistener/hooklistener-cli/releases/download/v#{version}/hooklistener-cli-x86_64-apple-darwin.tar.gz"
      sha256 "6a257eaed067962a59fbec0bde6b64c15a2df5dfbf9c09bcc42a19fdeb922316"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hooklistener/hooklistener-cli/releases/download/v#{version}/hooklistener-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e2d681d6740468bf77d4a7fac366dc2b0dbcc75135747c58356be98243a0d6a2"
    end
  end

  def install
    bin.install "hooklistener-cli" => "hooklistener"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hooklistener --version")
  end
end
