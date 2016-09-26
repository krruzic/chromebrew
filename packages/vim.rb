require 'package'

class Vim < Package
  version '7.4'
  source_url 'http://vim.mirror.anstey.ca/unix/vim-8.0.tar.bz2'
  source_sha1 '3e6fbe7f2d27d9119650d3c9f70d90f3f7e41d24'

  depends_on 'ncurses'
  depends_on 'perl'
  depends_on 'python27'
  depends_on 'ruby'

  def self.build
    system './configure --disable-selinux --prefix=/usr/local --enable-gui=yes --with-features=huge --without-x --disable-nls --with-tlib=ncurses --enable-perlinterp --enable-pythoninterp  --enable-rubyinterp --with-ruby-command=/usr/local/bin/ruby'
    system "make"
  end

  def self.install
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"

    puts "\nMake sure to put your .vim directory in a subdirectory of /usr/local so it has execute permissions"
    puts "You can then symlink to your home directory so vim can see it"
    puts "\tln -s /usr/local/vim ~/.vim"
    puts "\tln -s ~/.vim/vimrc ~/.vimrc\n\n"
  end
end
