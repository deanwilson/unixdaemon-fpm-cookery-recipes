class Yq < FPM::Cookery::Recipe
  description 'yq is a portable command-line YAML processor'
  homepage    'https://github.com/mikefarah/yq'
  maintainer  'Dean Wilson <dean.wilson@gmail.com>'

  name    'yq'
  version '2.4.0'
  license 'MIT'

  source "https://github.com/mikefarah/yq/releases/download/#{version}/yq_linux_amd64"
  sha256 '99a01ae32f0704773c72103adb7050ef5c5cad14b517a8612543821ef32d6cc9'

  def build; end

  def install
    bin.install 'yq_linux_amd64', 'yq'
    chmod 0755, destdir('usr/bin/yq')
  end
end
