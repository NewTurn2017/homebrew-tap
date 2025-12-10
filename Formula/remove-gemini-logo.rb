class RemoveGeminiLogo < Formula
  desc "Mac app to batch remove Gemini logos from images"
  homepage "https://github.com/NewTurn2017/remove-gemini-logo"
  url "https://github.com/NewTurn2017/remove-gemini-logo/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  depends_on "python@3.12"

  def install
    # Python 가상환경 생성 및 의존성 설치
    venv = virtualenv_create(libexec, "python3.12")
    venv.pip_install "opencv-python-headless"
    venv.pip_install "numpy"
    venv.pip_install "pillow"
    venv.pip_install "tkinterdnd2"

    # main.py를 실행 스크립트로 설치
    libexec.install "main.py"

    # 실행 파일 생성
    (bin/"remove-gemini-logo").write <<~EOS
      #!/bin/bash
      exec "#{libexec}/bin/python" "#{libexec}/main.py" "$@"
    EOS
  end

  def caveats
    <<~EOS
      실행 방법:
        remove-gemini-logo

      사용법:
        1. 앱 실행 후 이미지를 드래그앤드롭
        2. 자동으로 우하단 로고 제거
        3. _clean 접미사로 저장됨
    EOS
  end

  test do
    assert_match "Gemini Logo Remover", shell_output("#{bin}/remove-gemini-logo --help")
  end
end
