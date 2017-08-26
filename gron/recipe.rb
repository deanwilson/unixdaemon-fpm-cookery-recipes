class Gron < FPM::Cookery::Recipe
  description 'Make JSON greppable!'
  homepage    'https://github.com/tomnomnom/gron'
  maintainer  'Dean Wilson <dean.wilson@gmail.com>'

  name    'gron'
  version '0.3.6'
  license 'Apache-2.0'

  source "https://github.com/tomnomnom/gron/releases/download/v#{version}/gron-linux-amd64-#{version}.tgz"
  sha256 '12a02cdb037858f2956024ed6ab61b8461182cde12626708d8f033da3faaf613'

  def build; end

  def install
    target_dir = "#{destdir}/usr/local/bin"

    safesystem "mkdir -p #{target_dir}"
    safesystem "cp gron #{target_dir}/"
    safesystem "chmod +x #{target_dir}/gron"
  end
end
