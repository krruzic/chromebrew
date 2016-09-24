require 'package'

class Perl < Package
  version '5.24.0'
  binary_url ({
    i686: 'https://dl.dropboxusercontent.com/s/qwbwhvqed0yyv3l/perl-5.16.3-chromeos-i686.tar.gz?token_hash=AAHjq1OrZ3iNYerA9y6QIPtsn3fOnW5QeIFbYlBbBN-OkA&dl=1',
    x86_64: 'https://docs.google.com/uc?export=download&id=0B0P2paSbHsC9am4wS203YzdCNmM'
  })
  binary_sha1 ({
    i686: 'e2a8c5280b8a4abec70256f41d5e5b04253d6796',
    x86_64: '200e50a078240a04b430104150006a75666594b9'
  })
end
