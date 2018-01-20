install_docker-ce_prereqs:
  pkg.installed:
    - pkgs:
      - apt-transport-https
      - ca-certificates
      - curl
      - software-properties-common
      - docker

download_docker-ce_gpg_key:
  cmd.run:
    - name: curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

add_docker_repo_to_sources:
  cmd.run:
    - name: add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

install_docer-ce:
  pkg.installed:
    - pkgs:
      - docker-ce
  service.running:
    - name: docker
    - enable: True
