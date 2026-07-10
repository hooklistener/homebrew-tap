# typed: false
# frozen_string_literal: true

class Hooklistener < Formula
  desc "CLI tool for webhook inspection and local tunnel exposure"
  homepage "https://github.com/hooklistener/hooklistener-cli"
  version "1.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hooklistener/hooklistener-cli/releases/download/v#{version}/hooklistener-aarch64-apple-darwin.tar.gz"
      sha256 "a4b4ac50fed764ee4fef11bdfd307d5ee0fa2ba6e047bd1457057f6c6417f3a7"
    end

    on_intel do
      url "https://github.com/hooklistener/hooklistener-cli/releases/download/v#{version}/hooklistener-x86_64-apple-darwin.tar.gz"
      sha256 "dc6dbb128cdff2528f75313f28dc936c2571c64d098316dac2ce34857de32797"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hooklistener/hooklistener-cli/releases/download/v#{version}/hooklistener-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "360831fd8718b9ba658d5aa5c69c426be6649b303b98a3ac46ac5080d61e40c4"
    end
  end

  def install
    bin.install "hooklistener"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hooklistener --version")
  end
end
