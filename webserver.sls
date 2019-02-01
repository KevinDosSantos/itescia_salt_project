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
