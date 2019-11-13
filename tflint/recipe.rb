class Tflint < FPM::Cookery::Recipe
  description 'TFLint is a Terraform linter focused on possible errors, best practices, etc.'
  homepage    'https://github.com/wata727/tflint'
  maintainer  'Dean Wilson <dean.wilson@gmail.com>'

  name    'tflint'
  version '0.12.1'
  license 'MPL 2.0'

  source "https://github.com/wata727/tflint/releases/download/v#{version}/tflint_linux_amd64.zip"
  sha256 '5ae01a03a1c0ed0359bd795de735ce5fc8984611cd58866f67a545d7a17209c6'

  def build; end

  def install
    bin.install builddir('tflint_linux_amd64/tflint'), 'tflint'
  end
end
