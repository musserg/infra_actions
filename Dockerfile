FROM python:3.8
COPY ./ /app
RUN pip install -r /app/requirements.txt
WORKDIR /app/infra_project/
#CMD python manage.py runserver 0:5000
CMD gunicorn infra_project.wsgi:application --bind 0.0.0.0:5000