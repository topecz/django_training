## Tutorial 05
### testing
Command line actions:
```
python manage.py shell
import datetime
from django.utils import timezone
from django.models import Question
# creating a Question in the future
future_question = Question(pub_date=timezone.now() + datetime.timedelta(days=30))
# was it published recently?
future_question.was_published_recently()
```
### create a test to expose the bug
### Running tests
```
python manage.py test polls
```
### The Django test client
```
from django.test.utils import setup_test_environment
setup_test_environment()
```
Import the test client class
```
from django.test import Client
# create an instance
client = Client()
# get a response from '/'
response = client.get('/')
# we should expect a 404 from that address
response.status_code
#> 404
# on the other hand we should expect to find something at '/polls/'
# we'll use 'reverse()' rather than a hardcoded URL
from django.urls import reverse
response = client.get(reverse('polls:index'))
response.status_code
#> 200
response.context
# If the following code  doesn't work, you probable omitted the call to
# setup_test_environment() described above
response.context['latest_question_list']
```
