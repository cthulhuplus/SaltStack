install_pip:
  pkg.installed:
    - require:
      - pkg: install_python2
    - pkgs:
      - python-pip

install_pip3:
  pkg.installed:
    - require:
      - pkg: install_python3
    - pkgs:
      - python3-pip
