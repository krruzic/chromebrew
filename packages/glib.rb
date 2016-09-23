require 'package'

class Glib < Package # the package name
  version '2.49.1' # the package version

  binary_url ({
    x86_64: 
'https://docs.google.com/uc?export=download&id=0B0P2paSbHsC9ZEFZbi1weFdFbzg' 
  })
  binary_sha1 ({
    x86_64: '630eec37f68ad42603bd7e99842d9daf7df0af36'
  })

  depends_on 'pcre'
  
  def self.install                                                # self.install 
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"         
  end         
end

