# typed: false
# frozen_string_literal: true

class Hooklistener < Formula
  desc "CLI tool for webhook inspection and local tunnel exposure"
  homepage "https://github.com/hooklistener/hooklistener-cli"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hooklistener/hooklistener-cli/releases/download/v#{version}/hooklistener-aarch64-apple-darwin.tar.gz"
      sha256 "d60f1403de9680e3057363ee2e52329478fcd85c0c951785512534f7b5d05135"
    end

    on_intel do
      url "https://github.com/hooklistener/hooklistener-cli/releases/download/v#{version}/hooklistener-x86_64-apple-darwin.tar.gz"
      sha256 "5497e5f8e826dfefe19ccf05190494132c60f2215f3d69cfd66faf62c7fb9e9b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hooklistener/hooklistener-cli/releases/download/v#{version}/hooklistener-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e0df5f324846ad6e2ef484cd89e98b70bb335e24d9b1a4fa0f96856fb5cb03f0"
    end
  end

  def install
    bin.install "hooklistener"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hooklistener --version")
  end
end
