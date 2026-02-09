# typed: false
# frozen_string_literal: true

class Hooklistener < Formula
  desc "Fast, terminal-based CLI for browsing webhooks, forwarding events, and HTTP tunneling"
  homepage "https://hooklistener.com"
  version "0.3.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hooklistener/hooklistener-cli/releases/download/v#{version}/hooklistener-aarch64-apple-darwin.tar.gz"
      sha256 "cce95404d93f47de5ac74e22209ac42e44db1adae739b17faa03517f6e3f5c57"
    end
    on_intel do
      url "https://github.com/hooklistener/hooklistener-cli/releases/download/v#{version}/hooklistener-x86_64-apple-darwin.tar.gz"
      sha256 "cb9c7ff83d1e8903f76530b59d583d1deb20c3596bd2aafccb6397bc85fd6f66"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hooklistener/hooklistener-cli/releases/download/v#{version}/hooklistener-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ff6931c810c69d48acfc6f90ad7992f861f16f02e1cd93dfe98578e2daa1252b"
    end
  end

  def install
    bin.install "hooklistener"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hooklistener --version")
  end
end
