class Tflint < FPM::Cookery::Recipe
  description 'TFLint is a Terraform linter focused on possible errors, best practices, etc.'
  homepage    'https://github.com/wata727/tflint'
  maintainer  'Dean Wilson <dean.wilson@gmail.com>'

  name    'tflint'
  version '0.12.0'
  license 'MPL 2.0'

  source "https://github.com/wata727/tflint/releases/download/v#{version}/tflint_linux_amd64.zip"
  sha256 '2a9145adff49d4807b0fbff10b6d7c1c2fc4c2342a1fa02908171cbbabd966f2'

  def build; end

  def install
    bin.install builddir('tflint_linux_amd64/tflint'), 'tflint'
  end
end
