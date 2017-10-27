require 'package'

class Elinks < Package
  description 'Full-Featured Text WWW Browser'
  homepage 'http://elinks.or.cz/'
  version '0.13-19'

  case ARCH
  when 'aarch64'
    source_url 'https://github.com/Alanaktion/chromebrew/releases/download/elinks-v0.13-19/elinks-0.13-19-armv7h.pkg.tar.gz'
    source_sha256 '2cdf3cd08402bf1ecf6d7ae6596845368057f0d432d41a8aca6b52c1fa77e539'
  when 'armv7l'
    source_url 'https://github.com/Alanaktion/chromebrew/releases/download/elinks-v0.13-19/elinks-0.13-19-armv7h.pkg.tar.gz'
    source_sha256 '2cdf3cd08402bf1ecf6d7ae6596845368057f0d432d41a8aca6b52c1fa77e539'
  when 'i686'
    source_url 'https://github.com/Alanaktion/chromebrew/releases/download/elinks-v0.13-19/elinks-0.13-19-i686.pkg.tar.gz'
    source_sha256 '300e3d1e27b81d2d692e140c90ba53c289512b0c985524758dddb490209fe0f5'
  when 'x86_64'
    source_url 'https://github.com/Alanaktion/chromebrew/releases/download/elinks-v0.13-19/elinks-0.13-19-x86_64.pkg.tar.gz'
    source_sha256 '4b4ecdefadf5ac11a04d871a65d68aae107c8b07bada32300ded3f5195233e05'
  end

  depends_on 'bz2'
  depends_on 'lzip'
  depends_on 'openssl'
  depends_on 'zlibpkg'

  def self.install
    system "install -Dm755 elinks #{CREW_DEST_PREFIX}/bin/elinks"
  end
end
