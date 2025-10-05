class Tskr < Formula
  desc "Task management tool for developers"
  homepage "https://github.com/tskr-dev/tskr"
  url "https://github.com/tskr-dev/tskr/releases/download/v0.0.4/tskr-macos.tar.gz"
  sha256 "f291f70a22d523665dceda6c5f8195aa69cd62bbacc4280238aa8aa6de07a2e8"
  version "0.0.4"
  license "MIT"

  def install
    libexec.install Dir["tskr/*"]
    bin.install_symlink libexec/"tskr"
  end

  test do
    system "#{bin}/tskr", "--version"
  end
end