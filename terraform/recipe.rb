class Terraform < FPM::Cookery::Recipe
  description 'Terraform is a tool for building, changing, and combining infrastructure safely and efficiently'
  homepage    'https://www.terraform.io'
  maintainer  'Dean Wilson <dean.wilson@gmail.com>'

  name    'terraform'
  version '0.11.8'
  license 'MPLv2.0'
  arch    'amd64'

  source "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_linux_amd64.zip"
  sha256 '84ccfb8e13b5fce63051294f787885b76a1fedef6bdbecf51c5e586c9e20c9b7'

  def build; end

  def install
    bin.install builddir("terraform_#{version}_linux_amd64/terraform")
  end
end
