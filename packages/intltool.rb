require 'package'

class Intltool < Package
  version '0.12'
  source_url 'https://launchpad.net/intltool/trunk/0.51.0/+download/intltool-0.51.0.tar.gz'
  source_sha1 'a0c3bcb99d1bcfc5db70f8d848232a47c47da090'

  depends_on 'perl'

  def self.build
    system 'curl -L http://cpanmin.us | perl - App::cpanminus'
    system '#{HOME}/perl5/bin/cpanm local::lib'
    system '#{HOME}/perl5/bin/cpanm XML::Parser'
    system './configure --prefix=/usr/local'
    system "make"
  end

  def self.install
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"
  end

end
