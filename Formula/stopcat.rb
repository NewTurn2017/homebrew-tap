# Homebrew formula for stopcat.
#
#     brew install NewTurn2017/tap/stopcat
#
# 바이너리는 NewTurn2017/stopcat의 release 워크플로가 v* 태그마다 만드는
# arm64·x86_64 유니버설 묶음입니다. 새 버전은 url과 sha256을 함께 바꿉니다.
class Stopcat < Formula
  desc "Mac cleanup TUI that stops only what you don't need, by project and AI session"
  homepage "https://github.com/NewTurn2017/stopcat"
  url "https://github.com/NewTurn2017/stopcat/releases/download/v0.2.1/stopcat-v0.2.1-macos-universal.tar.gz"
  sha256 "c79135c8be8620735581f4339629faaf0b6e955ac1c62d8fda564cb891f6d24b"
  license "MIT"

  depends_on :macos

  def install
    bin.install "stopcat"
  end

  test do
    assert_match "stopcat #{version}", shell_output("#{bin}/stopcat --version")
  end
end
