class Countdown < FPM::Cookery::Recipe
  description 'Terminal countdown timer'
  homepage    'https://github.com/antonmedv/countdown'
  maintainer  'Dean Wilson <dean.wilson@gmail.com>'

  name    'countdown'
  version '1.0.0'
  license 'MIT'
  arch    'amd64'

  source "https://github.com/antonmedv/countdown/releases/download/v#{version}/countdown_linux_amd64"
  sha256 'bb94f2bc8ba10aeaa03216cc165b893faa0fc25a065a1cb28807bf65341b840f'

  def build; end

  def install
    binary_path = 'countdown_linux_amd64/countdown_linux_amd64'
    chmod 0755, builddir(binary_path)
    bin.install builddir(binary_path), 'countdown'
  end
end
