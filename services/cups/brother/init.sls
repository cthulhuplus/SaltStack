install_brother_printer_packages:
  pkg.installed:
#    - require:
#      - pkgs: install_cups
    - require:
      - pkg: install_cups
    - pkgs:
      - brother-cups-wrapper-ac
      - brother-cups-wrapper-bh7
      - brother-cups-wrapper-common
      - brother-cups-wrapper-extra
      - brother-cups-wrapper-laser
      - brother-cups-wrapper-laser1
      - brother-cups-wrapper-mfc9420cn  
