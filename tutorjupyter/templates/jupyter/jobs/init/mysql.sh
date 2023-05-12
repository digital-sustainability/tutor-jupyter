# Create jupyterhub database
mysql -u {{ MYSQL_ROOT_USERNAME }} --password="{{ MYSQL_ROOT_PASSWORD }}" --host "{{ MYSQL_HOST }}" --port {{ MYSQL_PORT }} -e "CREATE DATABASE IF NOT EXISTS {{ JUPYTER_HUB_MYSQL_DATABASE }};"
mysql -u {{ MYSQL_ROOT_USERNAME }} --password="{{ MYSQL_ROOT_PASSWORD }}" --host "{{ MYSQL_HOST }}" --port {{ MYSQL_PORT }} -e "CREATE USER IF NOT EXISTS '{{ JUPYTER_HUB_MYSQL_USERNAME }}';"
mysql -u {{ MYSQL_ROOT_USERNAME }} --password="{{ MYSQL_ROOT_PASSWORD }}" --host "{{ MYSQL_HOST }}" --port {{ MYSQL_PORT }} -e "ALTER USER '{{ JUPYTER_HUB_MYSQL_USERNAME }}'@'%' IDENTIFIED BY '{{ JUPYTER_HUB_MYSQL_PASSWORD }}';"
mysql -u {{ MYSQL_ROOT_USERNAME }} --password="{{ MYSQL_ROOT_PASSWORD }}" --host "{{ MYSQL_HOST }}" --port {{ MYSQL_PORT }} -e "GRANT ALL ON {{ JUPYTER_HUB_MYSQL_DATABASE }}.* TO '{{ JUPYTER_HUB_MYSQL_USERNAME }}'@'%';"
