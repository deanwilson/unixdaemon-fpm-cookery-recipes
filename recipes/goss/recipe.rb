class Goss < FPM::Cookery::Recipe
  description 'Quick and Easy server validation tool written in Golang'
  homepage    'https://github.com/aelsabbahy/goss'
  maintainer  'Dean Wilson <dean.wilson@gmail.com>'

  name    'goss'
  version '0.1.8'
  license 'Apache-2.0'

  source "https://github.com/aelsabbahy/goss/releases/download/v#{version}/goss-linux-amd64"
  sha256 'd817b07fa731bc6f773078b3d608ad6fd55a648174f2941731edbddfdf3f51d4'

  def build
  end

  def install
    target_dir = "#{destdir}/usr/local/bin"

    safesystem "mkdir -p #{target_dir}"
    safesystem "cp goss-linux-amd64 #{target_dir}/goss"
    safesystem "chmod +x #{target_dir}/goss"
  end

end
