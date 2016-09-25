require 'package'

class Docutils < Package
  version '0.51.0'
  source_url 'https://goo.gl/2m607p' # the sourceforge link was long and ugly
  source_sha1 '002450621b33c5690060345b0aac25bc2426d675'

  depends_on 'python27'

  def self.build
  end

  def self.install
    system "python", "setup.py", "install --user"
  end

end
