class Muffet < FPM::Cookery::Recipe
  description 'Muffet is a website link checker which scrapes and inspects all pages in a website recursively'
  homepage    'https://github.com/raviqqe/muffet'
  maintainer  'Dean Wilson <dean.wilson@gmail.com>'

  name    'muffet'
  version '2.3.0'
  license 'MIT'
  arch    'amd64'

  source "https://github.com/raviqqe/muffet/releases/download/v#{version}/muffet_#{version}_Linux_x86_64.tar.gz"
  sha256 '2379dc72d2d78e3dbbf95973d08d6ef79c8464b1db4913f1b12bf90ead7065d4'

  def build; end

  def install
    bin.install builddir('muffet')
  end
end
