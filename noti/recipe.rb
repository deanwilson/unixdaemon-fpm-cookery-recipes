class Noti < FPM::Cookery::Recipe
  description 'Monitor a process and trigger a notification'
  homepage    'https://github.com/variadico/noti'
  maintainer  'Dean Wilson <dean.wilson@gmail.com>'

  name    'noti'
  version '3.1.0'
  license 'MIT'
  arch    'amd64'

  source "https://github.com/variadico/noti/releases/download/#{version}/noti#{version}.linux-amd64.tar.gz"
  sha256 '959410e065ed36554c8c2e2b94c803de5dc8c149b2e88c220b814cb31b23f684'

  def build; end

  def install
    bin.install builddir('noti')
  end
end
