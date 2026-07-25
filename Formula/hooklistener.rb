# typed: false
# frozen_string_literal: true

class Hooklistener < Formula
  desc "CLI tool for webhook inspection and local tunnel exposure"
  homepage "https://github.com/hooklistener/hooklistener-cli"
  version "1.8.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hooklistener/hooklistener-cli/releases/download/v#{version}/hooklistener-aarch64-apple-darwin.tar.gz"
      sha256 "23b25d8df698d7b2c1031c2a38423e8b151985f7ab8cecb6077d4b681f51797b"
    end

    on_intel do
      url "https://github.com/hooklistener/hooklistener-cli/releases/download/v#{version}/hooklistener-x86_64-apple-darwin.tar.gz"
      sha256 "a692af29eb990f3c228d77f529022d9a0264ad395accbd67843f995c77eb05cf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hooklistener/hooklistener-cli/releases/download/v#{version}/hooklistener-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6e62d10ea87cddb78aa866102908283ce2030d98e39b28116fb60ef458e3807d"
    end
  end

  def install
    bin.install "hooklistener"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hooklistener --version")
  end
end
