class Json2Hcl < FPM::Cookery::Recipe
  description 'Convert JSON to HCL, and vice versa'
  homepage    'https://github.com/kvz/json2hcl'
  maintainer  'Dean Wilson <dean.wilson@gmail.com>'

  name    'json2hcl'
  version '0.0.6'
  license 'MIT'
  arch    'amd64'

  source "https://github.com/kvz/json2hcl/releases/download/v#{version}/json2hcl_v#{version}_linux_amd64"
  sha256 'd124ed13f3538c465fcab19e6015d311d3cd56f7dc2db7609b6e72fec666482d'

  def build; end

  def install
    # make a reusable name to make the cp easier to read
    binary_name = "json2hcl_v#{version}_linux_amd64"

    chmod 0755, builddir("#{binary_name}/#{binary_name}")
    bin.install builddir("#{binary_name}/#{binary_name}"), 'json2hcl'
  end
end
