require 'package'

class Mercurial < Package
  version '3.9.1'
  source_url 'https://www.mercurial-scm.org/release/mercurial-3.9.1.tar.gz'
  source_sha1 '6927932e144ad3dbf7677d1d0e12e1cd980a92f9'

  depends_on 'python27' # the python3 was built without bz2 support :(
  depends_on 'docutils'
  def self.build
    system "make build"
  end

  def self.install
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"
  end

end
