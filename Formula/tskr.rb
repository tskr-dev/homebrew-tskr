class Tskr < Formula
  desc "Task management tool for developers"
  homepage "https://github.com/tskr-dev/tskr"
  url "https://github.com/tskr-dev/tskr/releases/download/v0.0.6/tskr-macos.tar.gz"
  sha256 "8cc93f69cb84faca20d4d03a5de41dd0810c7c142456ed476b9c17febaabc222"
  version "0.0.6"
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