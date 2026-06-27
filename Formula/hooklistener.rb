# typed: false
# frozen_string_literal: true

class Hooklistener < Formula
  desc "CLI tool for webhook inspection and local tunnel exposure"
  homepage "https://github.com/hooklistener/hooklistener-cli"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hooklistener/hooklistener-cli/releases/download/v#{version}/hooklistener-aarch64-apple-darwin.tar.gz"
      sha256 "0a7800dd645456c1086c05c7717ba3e028b83c3dfab6a497f253696e14476e6e"
    end

    on_intel do
      url "https://github.com/hooklistener/hooklistener-cli/releases/download/v#{version}/hooklistener-x86_64-apple-darwin.tar.gz"
      sha256 "121b57d48b17c6f436dc61b0ae823a618d0567d5d62ae65907625049159b1a08"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hooklistener/hooklistener-cli/releases/download/v#{version}/hooklistener-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "25652cb31d14245696aa726c9f111f3f9dd28e39549dfa8949d44dcb44b18d03"
    end
  end

  def install
    bin.install "hooklistener"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hooklistener --version")
  end
end
