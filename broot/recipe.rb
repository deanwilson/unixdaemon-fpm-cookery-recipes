class Broot < FPM::Cookery::Recipe
  description 'A new way to see and navigate directory trees'
  homepage    'https://dystroy.org/broot/'
  maintainer  'Dean Wilson <dean.wilson@gmail.com>'

  name    'broot'
  version '0.11.9'
  license 'MIT'
  arch    'amd64'

  source "https://github.com/Canop/broot/releases/download/v#{version}/release.zip"
  sha256 '513ae47136aff52d1210bd43eb4392810cc414d91af835b294d79736ebc2a0eb'

  def build; end

  def install
    bin.install builddir('release/build/x86_64-linux/broot')
  end
end
