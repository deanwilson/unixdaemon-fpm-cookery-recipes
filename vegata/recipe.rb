class Vegata < FPM::Cookery::Recipe
  description 'HTTP load testing tool and library'
  homepage    'https://github.com/tsenart/vegeta'
  maintainer  'Dean Wilson <dean.wilson@gmail.com>'

  name    'Vegata'
  version '6.1.1'
  license 'MIT'
  arch    'amd64'

  source "https://github.com/tsenart/vegeta/releases/download/v#{version}/vegeta-v#{version}-linux-amd64.tar.gz"
  sha256 '2f0a69d0ae6f0bf268b7f655bd37c0104d5568d5b2bc45bbb2c405266f74e33d'

  def build; end

  def install
    target_dir = "#{destdir}/usr/local/bin"

    safesystem "mkdir -p #{target_dir}"
    safesystem "cp #{builddir}/vegeta #{target_dir}/"
  end

end
