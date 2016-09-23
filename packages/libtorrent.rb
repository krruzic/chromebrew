require 'package'

class Libtorrent < Package # the package name
  version '0.13.6' # the package version

  binary_url ({
    x86_64: 
'https://docs.google.com/uc?export=download&id=0B0P2paSbHsC9OVlyanJjYVVHbVk' 
  })
  binary_sha1 ({
    x86_64: '77f61e7994b6eb444a0f99ca2792c730099762ad'
  })

  source_url 'http://rtorrent.net/downloads/libtorrent-0.13.6.tar.gz'
  source_sha1 '493691929b701f4402f13c725840addf95231ad2' # software source sha1sum

  depends_on 'buildessential'
  depends_on 'automake' 
  depends_on 'm4'
  depends_on 'curl'
  depends_on 'gcc'  

  def self.build                                                  # self.build 
    system "./configure --prefix=/usr/local"
    system "make"                                
  end

  def self.install                                                # self.install 
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"         
  end         
end

