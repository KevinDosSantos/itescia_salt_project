apache:
     pkg.installed:
      {% if grains['os'] == 'Ubuntu' %}
          - name: apache2
      {% endif %}
     service.running:
          {% if grains['os'] == 'Debian' %}
          - name: apache2
          {% endif %}
          - require:
            - pkg: apache

AAAAB3NzaC1yc2EAAAABJQAAAQ.............OxZ3zQhIyXRlfLC6U4Kx94c+L62fBPsNQ==:
      ssh_auth.present:
          - user: adminitescia
