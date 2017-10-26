require 'package'

class Elinks < Package
  description 'Full-Featured Text WWW Browser'
  homepage 'http://elinks.or.cz/'
  version '0.11.7'
  source_url 'http://elinks.or.cz/download/elinks-0.11.7.tar.gz'
  source_sha256 '94dc254cdecddee51819ae17962d9e606690bee3ec43fb43c635cb40197b4bc7'

  binary_url ({
  })
  binary_sha256 ({
  })

  depends_on 'bz2'
  depends_on 'lzma'
  depends_on 'openssl'
  depends_on 'zlibpkg'

  def self.build
    system "./configure --prefix=#{CREW_PREFIX}"
    system "make"
  end

  def self.install
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"
  end
end
