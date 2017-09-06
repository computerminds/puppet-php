require 'formula'

class Autoconf213 < Formula
  homepage 'http://www.gnu.org/software/autoconf/'
  url 'http://ftpmirror.gnu.org/autoconf/autoconf-2.13.tar.gz'
  mirror 'http://ftp.gnu.org/gnu/autoconf/autoconf-2.13.tar.gz'
  sha256 'f0611136bee505811e9ca11ca7ac188ef5323a8e2ef19cffd3edb3cf08fd791e'

  version '2.13-boxen1'

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--program-suffix=213",
                          "--prefix=#{prefix}",
                          "--infodir=#{info}/autoconf213",
                          "--datadir=#{share}/autoconf213"
    system "make install"
  end
end
