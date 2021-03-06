class Mp3check < Formula
  desc "Tool to check mp3 files for consistency"
  homepage "https://code.google.com/p/mp3check/"
  url "https://mp3check.googlecode.com/files/mp3check-0.8.7.tgz"
  sha256 "27d976ad8495671e9b9ce3c02e70cb834d962b6fdf1a7d437bb0e85454acdd0e"

  bottle do
    cellar :any_skip_relocation
    sha256 "d63ba27cfd87cf1f8b1871fe8b0531882c037f116933cbc59caf429dfeaab735" => :el_capitan
    sha256 "5fd629e626c6227789c894f1fcf32e076118fd4fe9136e974610ef42135a4ddf" => :yosemite
    sha256 "ef678ca85ee3272b05e442ae13f319a1ab2868bc6ff9aa3cc84ae3bca0f98ad5" => :mavericks
  end

  def install
    ENV.deparallelize
    # The makefile's install target is kinda iffy, but there's
    # only one file to install so it's easier to do it ourselves
    system "make"
    bin.install "mp3check"
  end
end
