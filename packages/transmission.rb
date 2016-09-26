require 'package'

class Transmission < Package
    version '2.92'

    source_url 'https://github.com/transmission/transmission-releases/raw/master/transmission-2.92.tar.xz'
    source_sha1 '2140feba45c4471392033d21b86b6f3ef780d88e'

    depends_on 'libtool'
    depends_on 'intltool'
    depends_on 'gettext'

    def self.build
        system "./configure --prefix=/usr/local  -disable-gtk --disable-daemon --enable-lightweight --enable-cli"
        system "make"
    end

    def self.install
        system "make", "DESTDIR=#{CREW_DEST_DIR}", "install" 
    end
end
