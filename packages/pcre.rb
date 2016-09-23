require 'package'

class Pcre < Package # the package name
  version '8.39' # the package version

  binary_url ({
    x86_64: 
'https://docs.google.com/uc?export=download&id=0B0P2paSbHsC9d2ROeDlTQkdjemM' 
  })
  binary_sha1 ({
    x86_64: 'd4970191469e650f13aa2e5565aa7109abbbf44f'
  })

  depends_on 'buildessential'
  depends_on 'libtool'
  depends_on 'automake'
  depends_on 'm4'
  
  def self.install                                                # self.install 
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"         
  end         
end

