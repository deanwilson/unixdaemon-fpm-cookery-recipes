class DockerPushRM < FPM::Cookery::Recipe
  description 'Update your container repo README on Dockerhub, Quay or Harbor with a simple Docker command'
  homepage    'https://github.com/christian-korneck/docker-pushrm'
  maintainer  'Dean Wilson <dean.wilson@gmail.com>'

  name    'docker-pushrm'
  version '1.4.2'
  license 'MIT'

  source "https://github.com/christian-korneck/docker-pushrm/releases/download/v#{version}/docker-pushrm_linux_amd64"
  sha256 '3c984f8e7fcc96718ca58704e8bfcbb9ac27b98fbddefd78fe4f4b4246cc2a51'

  def build; end

  def install
    chmod 0755, builddir('docker-pushrm_linux_amd64/docker-pushrm_linux_amd64')
    bin.install builddir('docker-pushrm_linux_amd64/docker-pushrm_linux_amd64'), 'docker-pushrm'
  end
end
