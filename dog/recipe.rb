class Dog < FPM::Cookery::Recipe
  description 'dog is a colourful command-line DNS client.'
  homepage    'https://github.com/ogham/dog'
  maintainer  'Dean Wilson <dean.wilson@gmail.com>'

  name    'dog'
  version '0.1.0'
  license 'EUPL'
  arch    'amd64'

  source "https://github.com/ogham/dog/releases/download/v#{version}/dog-v#{version}-x86_64-unknown-linux-gnu.zip"
  sha256 '6093525fccf5de5b7ed66f920c9b6d2d16221adde8a44589dc3e4c47245039a0'

  def build; end

  def install
    bin.install builddir("dog-v#{version}-x86_64-unknown-linux-gnu/bin/dog"), 'dog-dns'
    man1.install builddir("dog-v#{version}-x86_64-unknown-linux-gnu/man/dog.1")
    # TODO: Has some name conflicts with `sheepdog` which prevent autocomplete working
    # etc('bash_completion.d').install builddir("dog-v#{version}-x86_64-unknown-linux-gnu/completions/dog.bash")
  end
end
