class Goprox < Formula
  desc "GoPro media management tool"
  homepage "https://github.com/sam302/GoProX"
  version "v01.14.00"
  url "https://github.com/sam302/GoProX/releases/download/v01.14.00/goprox-v01.14.00.tar.gz"
  sha256 "af6d8b1b870b3024ae7c157e837a1ef103ab6528af8c9b2f498c89a10c65fd31"
  
  depends_on "zsh"
  depends_on "exiftool"
  depends_on "jq"
  
  def install
    bin.install "goprox"
    man1.install "man/goprox.1"
  end
  
  test do
    system "#{bin}/goprox", "--version"
  end
end
