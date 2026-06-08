# Homebrew formula for micfix.
#
# This file lives in the tap repo `NewTurn2017/homebrew-tap` as
# `Formula/micfix.rb`, which lets users run:
#
#     brew install NewTurn2017/tap/micfix
#
# See PUBLISHING.md for how to cut a release and fill in the sha256.
class Micfix < Formula
  desc "Keep a chosen microphone as the macOS default input device"
  homepage "https://github.com/NewTurn2017/micfix"
  url "https://github.com/NewTurn2017/micfix/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "10351653f19dbd3e5dd716f75911d4a82c35fcec13570cb1f59a3afc3e90ca3f"
  license "MIT"
  version "0.1.0"

  depends_on :macos
  depends_on xcode: :build # provides swiftc

  def install
    system "swiftc", "-O", "micfix.swift", "-o", "micfix"
    bin.install "micfix"
  end

  def caveats
    <<~EOS
      Pick the microphone to keep and start the background agent with:

        micfix setup

      The agent runs at login and restores your chosen mic whenever the
      default input changes (e.g. when you plug in earphones). It never
      touches the output device.

      Remove the agent later with:  micfix uninstall
    EOS
  end

  test do
    assert_match "micfix", shell_output("#{bin}/micfix help")
  end
end
