class Terraform < FPM::Cookery::Recipe
  description 'Terraform is a tool for building, changing, and combining infrastructure safely and efficiently'
  homepage    'https://www.terraform.io'
  maintainer  'Dean Wilson <dean.wilson@gmail.com>'

  name    'terraform'
  version '0.12.9'
  license 'MPLv2.0'
  arch    'amd64'

  source "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_linux_amd64.zip"
  sha256 '69712c6216cc09b7eca514b9fb137d4b1fead76559c66f338b4185e1c347ace5'

  def build; end

  def install
    bin.install builddir("terraform_#{version}_linux_amd64/terraform")
  end
end
