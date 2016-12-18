https://tutorial.djangogirls.org/es/deploy/
www.pythonanywhere.com
#installing django
python3 -m virtualenv python3_myvenv
source python3_myvenv/bin/activate
pip3 install django

#testing & programming
django-admin startproject mysite .
python manage.py migrate
python manage.py runserver
#python manage.py runserver 8080
#python manage.py runserver 0.0.0.0:8000

manage.py startapp blog
python manage.py startapp blog
python manage.py makemigrations blog
python manage.py migrate blog
python manage.py runserver
python manage.py createsuperuser