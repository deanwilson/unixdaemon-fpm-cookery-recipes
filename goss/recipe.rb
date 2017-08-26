class Goss < FPM::Cookery::Recipe
  description 'Quick and Easy server validation tool written in Golang'
  homepage    'https://github.com/aelsabbahy/goss'
  maintainer  'Dean Wilson <dean.wilson@gmail.com>'

  name    'goss'
  version '0.2.3'
  license 'Apache-2.0'

  source "https://github.com/aelsabbahy/goss/releases/download/v#{version}/goss-linux-amd64"
  sha256 '3529ee6c68888a3c296dca1a3ff9c235c2fed4c641e3a25b44f231cd8ac0025f'

  def build; end

  def install
    target_dir = "#{destdir}/usr/local/bin"

    safesystem "mkdir -p #{target_dir}"
    safesystem "cp goss-linux-amd64 #{target_dir}/goss"
    safesystem "chmod +x #{target_dir}/goss"
  end
end
