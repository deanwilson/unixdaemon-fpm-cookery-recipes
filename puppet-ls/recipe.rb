class PuppetLs < FPM::Cookery::Recipe
  description 'List Puppet managed files in the given directory.'
  homepage    'https://github.com/deanwilson/puppet-scripts'
  maintainer  'Dean Wilson <dean.wilson@gmail.com>'

  name    'puppet-ls'
  version '1.0.0'
  license 'GPLv2'

  source "https://github.com/deanwilson/puppet-scripts/archive/#{version}.tar.gz"
  sha256 'bd276efef9d16c69edd875d8207f67aa7286ebee2a289a01afc18d93dcc10d91'

  arch 'all'

  def build; end

  def install
    prefix('local/bin').install 'puppet-ls'
  end
end
