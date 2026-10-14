# Homebrew formula for stopcat.
#
#     brew install NewTurn2017/tap/stopcat
#
# 바이너리는 NewTurn2017/stopcat의 release 워크플로가 v* 태그마다 만드는
# arm64·x86_64 유니버설 묶음입니다. 새 버전은 url·sha256·version을 함께 바꿉니다.
class Stopcat < Formula
  desc "Mac cleanup TUI that stops only what you don't need, by project and AI session"
  homepage "https://github.com/NewTurn2017/stopcat"
  url "https://github.com/NewTurn2017/stopcat/releases/download/v0.1.0/stopcat-v0.1.0-macos-universal.tar.gz"
  sha256 "2177a3d3421ad6c51564c6b795b9080c75149f0b5c4024c7a01af7d089c115ac"
  license "MIT"
  version "0.1.0"

  depends_on :macos

  def install
    bin.install "stopcat"
  end

  test do
    assert_match "stopcat #{version}", shell_output("#{bin}/stopcat --version")
  end
end
