class Terraform < FPM::Cookery::Recipe
  description 'Terraform is a tool for building, changing, and combining infrastructure safely and efficiently'
  homepage    'https://www.terraform.io'
  maintainer  'Dean Wilson <dean.wilson@gmail.com>'

  name    'terraform'
  version '0.11.7'
  license 'MPLv2.0'
  arch    'amd64'

  source "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_linux_amd64.zip"
  sha256 '6b8ce67647a59b2a3f70199c304abca0ddec0e49fd060944c26f666298e23418'

  def build; end

  def install
    bin.install builddir("terraform_#{version}_linux_amd64/terraform")
  end
end
