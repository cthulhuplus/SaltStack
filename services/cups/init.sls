install_cups:
  pkg.installed:
    - pkgs:
      - cups
  service.running:
    - name: cups
    - enable: True
