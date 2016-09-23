require 'package'

class Libffi < Package # the package name
  version '3.1' # the package version

  binary_url ({
    x86_64: 
'https://docs.google.com/uc?export=download&id=0B0P2paSbHsC9M200eUN0STBic0k' 
  })
  binary_sha1 ({
    x86_64: 'f5e2d6e3e29313816c140195ac20c27202de0367'
  })

  depends_on 'buildessential'
  depends_on 'libtool'
  depends_on 'automake'
  depends_on 'm4'
  
  def self.install                                                # self.install 
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"         
  end         
end

