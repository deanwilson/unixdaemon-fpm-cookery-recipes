class Vegata < FPM::Cookery::Recipe
  description 'HTTP load testing tool and library'
  homepage    'https://github.com/tsenart/vegeta'
  maintainer  'Dean Wilson <dean.wilson@gmail.com>'

  name    'vegata'
  version '12.8.4'
  license 'MIT'
  arch    'amd64'

  source "https://github.com/tsenart/vegeta/releases/download/v#{version}/vegeta_#{version}_linux_amd64.tar.gz"
  sha256 'c9a8866d748976a5cd012d436887b8af4e99b58e67c3e5da7558858bfc8b0477'

  def build; end

  def install
    target_dir = "#{destdir}/usr/local/bin"

    safesystem "mkdir -p #{target_dir}"
    safesystem "cp #{builddir}/vegeta #{target_dir}/"
  end
end
