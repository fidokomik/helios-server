#!/bin/bash
dropdb helios
createdb helios
python manage.py syncdb
python manage.py migrate
echo "from helios_auth.models import User; User.objects.create(user_type='pirateid',user_id='stanislav.stipl@pirati.cz', info={'name':'Stanislav Stipl'})" | python manage.py shell
