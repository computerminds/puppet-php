require 'formula'

class Zlibphp < Formula
  homepage 'http://www.zlib.net/'
  url 'http://zlib.net/fossils/zlib-1.2.8.tar.gz'
  sha256 '2a0dd0894c35b8736ff2bee925aab35b473a6c6b432b25e56442bacb0e72bc3a'

  keg_only :provided_by_osx

  version '1.2.8-boxen1'

  option :universal

  def install
    ENV.universal_binary if build.universal?
    system "./configure", "--prefix=#{prefix}"
    system "make install"
  end
end
