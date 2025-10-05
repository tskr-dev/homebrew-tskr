class Tskr < Formula
  desc "Task management tool for developers"
  homepage "https://github.com/tskr-dev/tskr"
  url "https://github.com/tskr-dev/tskr/releases/download/v0.0.4/tskr-macos.tar.gz"
  sha256 "f291f70a22d523665dceda6c5f8195aa69cd62bbacc4280238aa8aa6de07a2e8"
  version "0.0.4"
  license "MIT"

  def install
    # When the tarball has a single top-level directory, Homebrew changes
    # into it before running install. So, we install everything from
    # the current directory ("*").
    libexec.install Dir["*"]
    
    # The executable 'tskr' is now at libexec/tskr, so this link is correct.
    bin.install_symlink libexec/"tskr"
  end

  test do
    system "#{bin}/tskr", "--version"
  end
end