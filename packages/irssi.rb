require 'package'

class Irssi < Package # the package name
  version '0.8.20' # the package version

  binary_url ({
    x86_64: 'https://docs.google.com/uc?export=download&id=0B0P2paSbHsC9NWpqd3hIVC02clU'
  })
  binary_sha1 ({
    x86_64: 'a4a0743479665cf3209ac9be51ec5a036624bcdc'
  })

  depends_on 'glib'
  depends_on 'perl'
  
  def self.install                                                # self.install 
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"         
  end         
end

