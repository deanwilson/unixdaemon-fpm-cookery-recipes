class YumTransactionJSON < FPM::Cookery::Recipe
  description 'Show pending yum operations as a JSON structure'
  homepage    'https://github.com/deanwilson/yum-transaction-json'
  maintainer  'Dean Wilson <dean.wilson@gmail.com>'

  name    'yum-transaction-json'
  version '1.0.0'
  license 'GPLv3'

  source "https://github.com/deanwilson/yum-transaction-json/archive/#{version}.tar.gz"
  sha256 '40bafdba06acbf08804621f7489bcf59d19dd600eec90a91e05d382ecac1c777'

  arch 'all'
  depends ['python-simplejson']

  def build; end

  def install
    plugin_dir = "#{destdir}/usr/lib/yum-plugins"
    config_dir = "#{destdir}/etc/yum/pluginconf.d"

    safesystem "mkdir -p #{config_dir} #{plugin_dir}"

    etc('yum/pluginconf.d').install   'transaction-json.conf'
    prefix('lib/yum-plugins').install 'transaction-json.py' # prefix defaults to /usr
  end
end
