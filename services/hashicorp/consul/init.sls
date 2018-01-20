consul_dep_unzip:
  pkg.installed:
    - pkgs:
      - unzip

download_consul:
  file.managed:
    - name: /tmp/consul_1.0.2_linux_amd64.zip
    - source: https://releases.hashicorp.com/consul/1.0.2/consul_1.0.2_linux_amd64.zip
    - source_hash: https://releases.hashicorp.com/consul/1.0.2/consul_1.0.2_SHA256SUMS

consul_unzip:
  archive.extracted:
    - name: /usr/bin
    - source: /tmp/consul_1.0.2_linux_amd64.zip
    - enforce_toplevel: false

consul_symlink:
  file.symlink:
    - target: /usr/bin/consul
    - name: /usr/local/bin/consul
