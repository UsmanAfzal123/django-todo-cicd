FROM python:3.8


RUN python -m pip install django


COPY . .

RUN python manage.py migrate

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]



