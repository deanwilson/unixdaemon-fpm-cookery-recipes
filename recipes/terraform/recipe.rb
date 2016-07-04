class Goss < FPM::Cookery::Recipe
  description 'Terraform is a tool for building, changing, and combining infrastructure safely and efficiently'
  homepage    'https://www.terraform.io'
  maintainer  'Dean Wilson <dean.wilson@gmail.com>'

  name    'terraform'
  version '0.6.16'
  license 'MPLv2.0'
  arch    'amd64'

  source "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_linux_amd64.zip"
  sha256 'e10987bca7ec15301bc2fd152795d51cfc9fdbe6c70c9708e6e2ed81eaa1f082'

  def build
  end

  def install
    target_dir = "#{destdir}/usr/local/bin"

    safesystem "mkdir -p #{target_dir}"
    safesystem "cp #{builddir}/terraform_#{version}_linux_amd64/* #{target_dir}/"
  end

end
