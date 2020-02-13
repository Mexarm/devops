FROM satell.sct.gob.mx:5000/sct-redhat_docker-rhscl_python-35-rhel7
RUN pip install django django_rest_framework
COPY . .
RUN python manage.py migrate
RUN echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.create_superuser('admin', 'admin@myproject.com', 'password')" | python3 manage.py shell
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]