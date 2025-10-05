class Tskr < Formula
    desc "Task management tool for developers"
    homepage "https://github.com/tskr-dev/tskr"
    url "https://github.com/tskr-dev/tskr/releases/download/v0.1.0/tskr-macos.tar.gz"
    sha256 "REPLACE_WITH_ACTUAL_SHA256"
    version "0.1.0"
    license "MIT"
  
    def install
      bin.install "tskr/tskr"
      
      # Install any additional files if needed
      # lib.install "tskr/lib" if File.directory?("tskr/lib")
    end
  
    test do
      system "#{bin}/tskr", "--version"
    end
  end