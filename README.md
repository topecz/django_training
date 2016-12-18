# django_training
## training on Django framework
djangogirls, repository with the web training, full functional.

https://tutorial.djangogirls.org/es/deploy/
www.pythonanywhere.com
##installing django
```
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
```

## first steps with the project
```
  echo "# django_training" >> README.md
  git init
  git add README.md
  git commit -m "first commit"
  git remote add origin https://github.com/topecz/django_training.git
  git push -u origin master
  ```
## Tutorial 01
Working as expected.
