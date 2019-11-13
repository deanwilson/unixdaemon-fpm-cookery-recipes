class Tfsec < FPM::Cookery::Recipe
  description 'Static analysis powered security scanner for your terraform code.'
  homepage    'https://github.com/liamg/tfsec'
  maintainer  'Dean Wilson <dean.wilson@gmail.com>'

  name    'tfsec'
  version '0.12.0'
  license 'MIT'

  source "https://github.com/liamg/tfsec/releases/download/v#{version}/tfsec-linux-amd64"
  sha256 '473126fe588293db34b8084c939932a6c30196613c915839157d7da9d793cab4'

  def build; end

  def install
    chmod 0755, builddir('tfsec-linux-amd64/tfsec-linux-amd64')
    bin.install builddir('tfsec-linux-amd64/tfsec-linux-amd64'), 'tfsec'
  end
end
