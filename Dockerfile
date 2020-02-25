FROM python:3.6
#WORKDIR /opt/app-root/src
COPY . .
RUN pip install django==2.1.* django-rest-framework 
RUN echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.create_superuser('admin', 'admin@myproject.com', 'password')" \
  | python manage.py shell
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
#CMD /bin/bash
