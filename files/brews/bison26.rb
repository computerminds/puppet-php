require 'formula'

class Bisonphp26 < Formula
  homepage 'http://www.gnu.org/software/bison/'
  url 'http://ftpmirror.gnu.org/bison/bison-2.6.4.tar.gz'
  mirror 'http://ftp.gnu.org/gnu/bison/bison-2.6.4.tar.gz'
  sha256 'de2d15dfdcfc24405464cb95acc9d5ef31fb2e5be4aca6a530ec59bb57c30e5d'

  version '2.6.4-boxen1'

  keg_only :provided_by_osx, 'Some formulae require a newer version of bison.'

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
