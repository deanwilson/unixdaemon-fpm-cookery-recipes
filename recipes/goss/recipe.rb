class Goss < FPM::Cookery::Recipe
  description 'Quick and Easy server validation tool written in Golang'
  homepage    'https://github.com/aelsabbahy/goss'
  maintainer  'Dean Wilson <dean.wilson@gmail.com>'

  name    'goss'
  version '0.1.3'
  license 'Apache-2.0'

  source "https://github.com/aelsabbahy/goss/releases/download/v#{version}/goss-linux-amd64"
  sha256 'f5c2a92db8b0748055c3ab48cee15c533ae90e0986b5b511dcfe07b7a20668c5'

  def build
  end

  def install
    target_dir = "#{destdir}/usr/local/bin"

    safesystem "mkdir -p #{target_dir}"
    safesystem "cp goss-linux-amd64 #{target_dir}/goss"
    safesystem "chmod +x #{target_dir}/goss"
  end

end
