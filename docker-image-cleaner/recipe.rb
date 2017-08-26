class DockerImageCleaner < FPM::Cookery::Recipe
  description "Clean up images you don't use in docker"
  homepage    'https://github.com/docwhat/docker-image-cleaner'
  maintainer  'Dean Wilson <dean.wilson@gmail.com>'

  name    'docker-image-cleaner'
  version '4.0.6'

  source "https://github.com/docwhat/docker-image-cleaner/releases/download/v#{version}/docker-image-cleaner_linux_amd64"
  sha256 '8ef18b79646d0e7e117046f393d32fa127a341b7a49bd96efccae68db92154d9'

  def build; end

  def install
    target_dir = "#{destdir}/usr/local/bin"

    safesystem "mkdir -p #{target_dir}"
    safesystem "cp docker-image-cleaner_linux_amd64 #{target_dir}/docker-image-cleaner"
    safesystem "chmod +x #{target_dir}/docker-image-cleaner"
  end
end
