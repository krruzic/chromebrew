require 'package'

class Irssi < Package # the package name
  version '0.8.20' # the package version

  binary_url ({
    x86_64: 
'https://docs.google.com/uc?export=download&id=0B0P2paSbHsC9bmFxdlI4bTlqemc' 
  })
  binary_sha1 ({
    x86_64: '8ae4eb19c6e2244f3cca8c9b1c6803a41b733f59'
  })

  depends_on 'glib'
  
  def self.install                                                # self.install 
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"         
  end         
end

