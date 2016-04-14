class Goss < FPM::Cookery::Recipe
  description 'Terraform is a tool for building, changing, and combining infrastructure safely and efficiently'
  homepage    'https://www.terraform.io'
  maintainer  'Dean Wilson <dean.wilson@gmail.com>'

  name    'terraform'
  version '0.6.14'
  license 'MPLv2.0'
  arch    'amd64'

  source "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_linux_amd64.zip"
  sha256 '6d93290f980df15a453e907ea9a2ca8f8fed41143c220953c911b5174c3e3ab0'

  def build
  end

  def install
    target_dir = "#{destdir}/usr/local/bin"

    safesystem "mkdir -p #{target_dir}"
    safesystem "cp #{builddir}/terraform_#{version}_linux_amd64/* #{target_dir}/"
  end

end
