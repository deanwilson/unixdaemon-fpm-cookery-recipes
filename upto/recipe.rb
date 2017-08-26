class Upto < FPM::Cookery::Recipe
  description 'Bash function that allows to go up to a certain directory.'
  homepage    'https://github.com/driv/upto'
  maintainer  'Dean Wilson <dean.wilson@gmail.com>'

  name    'upto'
  version '0.1.0'
  license 'MIT'
  arch    'all'

  source 'https://github.com/driv/upto.git',
         :with => 'git',
         :sha  => '828c47dce9a60c02ba4ac77b9b661cbc8e252f4e'

  def build; end

  def install
    etc('profile.d').install 'upto.sh'
  end
end
