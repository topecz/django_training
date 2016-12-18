## Tutorial 02
Command line actions:
```
python manage.py migrate
```
### Activating models
```
python manage.py makemigrations polls   ## storing changes for a migration
python manage.py sqlmigrate polls 0001  ## run the migrations and manage the db schema
python manage.py check    ## check for any problems in your project
python manage.py migrate  ## create those model tables in your bd

```
Three-step guide to making model changes:
- Change your models (in models.py).
- Run python manage.py makemigrations to create migrations for those changes
- Run python manage.py migrate to apply those changes to the database.
### Playing with the API
```
python manage.py shell    ## Access the API
from polls.models import Question, Choice   # Import the model classes you created
Question.objects.all()    ## List the questions in your system
from django.utils import timezone
q = Question(question_text="What's new?", pub_date=timezone.now())
q.save()    ## save the object in your DB
q.id        ## list the object
q.question_text
q.pub_date
q.question_text = "What's up?"
q.save()
Question.objects.all()    ## Display all the questions in the DB

python manage.py shell    ## restart your console again
from polls.models import Question, Choice
# Make sure our __str__() addition worked.
Question.objects.all()
<QuerySet [<Question: What's up?>]>
## django DB lookup API
Question.objects.filter(id=1)
Question.objects.filter(question_text__startswith='What')
from django.utils import timezone
current_year = timezone.now().year
Question.objects.get(pub_date__year=current_year)
Question.objects.get(id=2)
Question.objects.get(pk=1)
q = Question.objects.get(pk=1)
q.was_published_recently()
q = Question.objects.get(pk=1)
q.choice_set.all()
q.choice_set.create(choice_text='Not much', votes=0)
q.choice_set.create(choice_text='The sky', votes=0)
c = q.choice_set.create(choice_text='Just hacking again', votes=0)
c.question
q.choice_set.all()
q.choice_set.count()
Choice.objects.filter(question__pub_date__year=current_year)
c = q.choice_set.filter(choice_text__startswith='Just hacking')
c.delete()
```
# Introducing the Django Admin
## Creating an admin user
```
python manage.py createsuperuser
```
