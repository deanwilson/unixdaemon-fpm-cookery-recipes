class NodeExporter < FPM::Cookery::Recipe
  description 'Prometheus Exporter for machine metrics.'
  homepage    'https://github.com/prometheus/node_exporter'
  maintainer  'Dean Wilson <dean.wilson@gmail.com>'

  name    'node_exporter'
  version '0.15.2'
  license 'Apache-2.0'
  arch    'amd64'

  source "https://github.com/prometheus/node_exporter/releases/download/v#{version}/node_exporter-#{version}.linux-amd64.tar.gz"
  sha256 '1ce667467e442d1f7fbfa7de29a8ffc3a7a0c84d24d7c695cc88b29e0752df37'

  platforms [:fedora, :redhat, :centos] do
    pre_install 'redhat/pre-install.sh'
    post_install 'redhat/post-install.sh'

    pre_uninstall 'redhat/pre-uninstall.sh'
  end

  def build; end

  def install
    case FPM::Cookery::Facts.platform
    when :redhat, :fedora, :centos # osfamily please!
      etc('sysconfig').install workdir('redhat/sysconf.node_exporter'), name
      lib('systemd/system').install workdir('redhat/node_exporter.service'), 'node_exporter.service'
    end

    target_dir = "#{destdir}/usr/sbin"

    safesystem "mkdir -p #{target_dir}"
    safesystem "cp #{builddir}/node_exporter-#{version}.linux-amd64/node_exporter* #{target_dir}/node_exporter"
    safesystem "chmod +x #{target_dir}/node_exporter"
  end
end
