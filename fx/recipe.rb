class Fx < FPM::Cookery::Recipe
  description 'Terminal JSON viewer'
  homepage    'https://github.com/antonmedv/fx'
  maintainer  'Dean Wilson <dean.wilson@gmail.com>'

  name    'fx'
  version '24.0.0'
  license 'MIT'

  source "https://github.com/antonmedv/fx/releases/download/#{version}/fx_linux_amd64"
  sha256 '7973466fd7299182cb9073d1eb84f52e057192aa98edd2ed67dddaeae47235b4'

  def build; end

  def install
    target_dir = "#{destdir}/usr/local/bin"

    safesystem "mkdir -p #{target_dir}"
    safesystem "cp fx_linux_amd64 #{target_dir}/fx"
    safesystem "chmod +x #{target_dir}/fx"
  end
end
