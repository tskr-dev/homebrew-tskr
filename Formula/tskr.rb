class Tskr < Formula
  desc "Task management tool for developers"
  homepage "https://github.com/tskr-dev/tskr"
  url "https://github.com/tskr-dev/tskr/releases/download/v0.0.5/tskr-macos.tar.gz"
  sha256 "d83c1103df29756a50a735ab39162423298440cfad031bd8435ad0221304e899"
  version "0.0.5"
  license "MIT"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"tskr"
  end

  def post_install
    # Run tskr once to trigger PyInstaller unpacking/initialization
    # Use --version as a lightweight command that won't modify anything
    system "#{bin}/tskr", "--version"
  end

  test do
    system "#{bin}/tskr", "--version"
  end
end