class HTTPStat < FPM::Cookery::Recipe
  description 'It is like curl -v, with colours.'
  homepage    'https://github.com/davecheney/httpstat'
  maintainer  'Dean Wilson <dean.wilson@gmail.com>'

  name    'httpstat'
  version '1.0.0'
  license 'MIT'
  arch    'amd64'

  source "https://github.com/davecheney/httpstat/releases/download/v#{version}/httpstat-linux-amd64-v#{version}"
  sha256 '9edc7d57a1c726b8a357ea61d9aa3f7c8c75a69777ca21e2afdf5f8331a9ecbc'

  def build; end

  def install
    binary_path = "httpstat-linux-amd64-v#{version}/httpstat-linux-amd64-v#{version}"

    chmod 0755, builddir(binary_path)
    bin.install builddir(binary_path), 'httpstat'
  end
end
