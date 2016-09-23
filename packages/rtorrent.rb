require 'package'

class Rtorrent < Package # the package name
  version '0.9.6' # the package version

  binary_url ({
    x86_64: 
'https://docs.google.com/uc?export=download&id=0B0P2paSbHsC9b29QSlFadG1RZEk' 
  })
  binary_sha1 ({
    x86_64: 'a1b60a1724faba32dee82c86c6c8ecac7c328b36'
  })

  depends_on 'ncurses'
  depends_on 'libtorrent'
  

  def self.build                                                  # self.build 
    system "./configure --prefix=/usr/local"
    system "make"                                
  end

  def self.install                                                # self.install 
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"         
  end         
end

