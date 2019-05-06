class RedisTUI < FPM::Cookery::Recipe
  description 'A Redis Text-based UI client in CLI'
  homepage    'https://github.com/mylxsw/redis-tui'
  maintainer  'Dean Wilson <dean.wilson@gmail.com>'

  name    'redis-tui'
  version '0.1.5'
  license 'MIT'
  arch    'amd64'

  source "https://github.com/mylxsw/redis-tui/releases/download/#{version}/redis-tui-linux"
  sha256 'a092938655a747e61fae068ff1125d6f78bc30d981349aca7fe6f7c4b1f27586'

  def build; end

  def install
    binary_path = 'redis-tui-linux/redis-tui-linux'
    chmod 0755, builddir(binary_path)
    bin.install builddir(binary_path), 'redis-tui'
  end
end
