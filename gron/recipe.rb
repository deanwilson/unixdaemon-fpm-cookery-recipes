class Gron < FPM::Cookery::Recipe
  description 'Make JSON greppable!'
  homepage    'https://github.com/tomnomnom/gron'
  maintainer  'Dean Wilson <dean.wilson@gmail.com>'

  name    'gron'
  version '0.5.2'
  license 'Apache-2.0'

  source "https://github.com/tomnomnom/gron/releases/download/v#{version}/gron-linux-amd64-#{version}.tgz"
  sha256 '819f08dfa10bcc5ed9c7005c4a8e7fce539042d115ab0d9662bc7e31e8f3c919'

  def build; end

  def install
    bin.install builddir('gron')
  end
end
