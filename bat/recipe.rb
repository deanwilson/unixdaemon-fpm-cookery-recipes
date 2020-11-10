class Bat < FPM::Cookery::Recipe
  description 'A cat clone with syntax highlighting and Git integration.'
  homepage    'https://github.com/sharkdp/bat'
  maintainer  'Dean Wilson <dean.wilson@gmail.com>'

  name    'bat'
  version '0.16.0'
  license 'MIT'
  arch    'amd64'

  source "https://github.com/sharkdp/bat/releases/download/v#{version}/bat-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
  sha256 'a9e2d7f5ad5962bca8bd742536c80f9d4d5f42cb1b160bf19671907c3507ab1e'

  def build; end

  def install
    bin.install builddir("bat-v#{version}-x86_64-unknown-linux-gnu/bat")
    man1.install builddir("bat-v#{version}-x86_64-unknown-linux-gnu/bat.1")
  end
end
