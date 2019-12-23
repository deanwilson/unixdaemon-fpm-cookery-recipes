class Chroma < FPM::Cookery::Recipe
  description 'Chroma - A general purpose syntax highlighter in pure Go.'
  homepage    'https://github.com/alecthomas/chroma'
  maintainer  'Dean Wilson <dean.wilson@gmail.com>'

  name    'chroma'
  version '0.7.0'
  license 'MIT'

  source "https://github.com/alecthomas/chroma/releases/download/v#{version}/chroma-#{version}-linux-amd64.tar.gz"
  sha256 '9eb4dc349a7e8416a4e5c7195de0f0577259d68bb46074db31ccfd296aa33eaa'

  def build; end

  def install
    bin.install builddir('chroma'), 'chroma'
  end
end
