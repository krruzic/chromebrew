require 'package'

class Gdbm < Package
  version '1.12'

  source_url 'https://ftpmirror.gnu.org/gdbm/gdbm-1.12.tar.gz'
  source_sha1 '86513e8871bb376bc014e9e5a2d18a8e0a8ea2f5'

  def self.build
    system './configure --disable-dependency-tracking --disable-silent-rules --prefix=/usr/local'
  end

  def self.install
    system "make", "DESTDIR=#{CREW_DEST_DIR}" "install"
  end
end
