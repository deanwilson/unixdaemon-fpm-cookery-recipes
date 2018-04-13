class Nomad < FPM::Cookery::Recipe
  name 'nomad'
  homepage 'https://www.nomadproject.io/'

  version '0.8.0'

  source "https://releases.hashicorp.com/nomad/#{version}/nomad_#{version}_linux_amd64.zip"
  sha256 '1166cc6cb8b8ef4af73c7ed745b938fd060c6a6222111c13ff5d88efbccd66c5'

  maintainer 'Dean Wilson <dean.wilson@gmail.com>'
  license 'Mozilla Public License, version 2.0'

  def build; end

  def install
    bin.install builddir("nomad_#{version}_linux_amd64/nomad")
  end
end
