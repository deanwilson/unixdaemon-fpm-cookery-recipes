class SQLBench < FPM::Cookery::Recipe
  description 'sqlbench measures and compares the execution time of one or more SQL queries.'
  homepage    'https://github.com/felixge/sqlbench'
  maintainer  'Dean Wilson <dean.wilson@gmail.com>'

  name    'sqlbench'
  version '1.1.0'
  license 'MIT'
  arch    'amd64'

  source "https://github.com/felixge/sqlbench/releases/download/v#{version}/sqlbench_#{version}_linux_amd64.tar.gz"
  sha256 'd356652edd0b6f254ad1384aa64c037ac59c02a5d0c3b058203519d60a5a1ede'

  def build; end

  def install
    bin.install builddir('sqlbench')
  end
end
