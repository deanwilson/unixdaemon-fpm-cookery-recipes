class Ethr < FPM::Cookery::Recipe
  description 'Quick and Easy server validation tool written in Golang'
  homepage    'https://github.com/microsoft/ethr'
  maintainer  'Dean Wilson <dean.wilson@gmail.com>'

  name    'ethr'
  version '0.2.1'
  license 'MIT'

  source "https://github.com/microsoft/ethr/releases/download/v#{version}/ethr_linux.zip"
  sha256 'd1c586eaaddea6913adad8ef307fcbccfca1b547fabc5521178a6e68d1a21369'

  def build; end

  def install
    bin.install builddir('ethr_linux/ethr')
  end
end
