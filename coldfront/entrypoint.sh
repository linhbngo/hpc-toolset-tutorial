#!/bin/bash
set -e

echo "---> Starting the MUNGE Authentication service (munged) on coldfront ..."
gosu munge /usr/sbin/munged

source /srv/www/venv/bin/activate

until /srv/www/coldfront/manage.py shell < /srv/www/checkdb.py 2>&1 > /dev/null
do
    echo "-- Waiting for database to become active ..."
    sleep 2
done

if ! /srv/www/coldfront/manage.py show_users_in_project_but_not_in_allocation &> /dev/null; then
    echo "-- Initializing coldfront database..."
    /srv/www/coldfront/manage.py initial_setup

    echo "-- Generating static css files..."
    /srv/www/coldfront/manage.py collectstatic

    echo "-- Creating superuser..."
    echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.create_superuser('admin', 'admin@localhost', 'admin')" | /srv/www/coldfront/manage.py shell
fi

echo "---> Starting sshd on coldfront..."
/usr/sbin/sshd

echo "---> Starting nginx on coldfront..."
/sbin/nginx

echo "---> Starting coldfront in gunicorn..."
exec gosu coldfront:nginx bash -c 'cd /srv/www/coldfront; source /srv/www/venv/bin/activate; gunicorn --workers 3 --bind unix:/srv/www/coldfront/coldfront.sock -m 007 coldfront.config.wsgi'