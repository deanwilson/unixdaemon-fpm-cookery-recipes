class CheckDebianUpdates < FPM::Cookery::Recipe
  description 'Nagios plugin to alert when installed Debian packages require updates'
  homepage    'https://github.com/deanwilson/nagios-plugins/blob/master/check_debian_updates/'
  maintainer  'Dean Wilson <dean.wilson@gmail.com>'

  name    'nagios-plugins-check_debian_updates'
  version '0.3'
  license 'GPLv2'
  arch    'all'

  source 'https://github.com/deanwilson/nagios-plugins.git',
         with: 'git',
         sha: '4073ee1bd36c8d59afef0a734c7c6867e50d11ed'

  def build; end

  def install
    root('/usr/lib64/nagios/plugins').install 'check_debian_updates/check_debian_updates'
  end
end
