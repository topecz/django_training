from django.conf.urls import include, url
from . import views

urlpatterns = [
	# https://docs.djangoproject.com/en/1.10/intro/tutorial03/
	# <li><a href="/polls/{{ question.id }}/">{{ question.question_text }}</a></li>
	# <li><a href="{% url 'detail' question.id %}">{{ question.question_text }}</a></li>
	# the 'name' value as called by the {% url %} template tag
	# url(r'^(?P<question_id>[0-9]+)/$', views.detail, name='detail'),
	# changing potions
	# added the word 'specifics'
	# url(r'^specifics/(?P<question_id>[0-9]+)/$', views.detail, name='detail'),

	#<h1><a href="/post/{{ post.id }}/">{{ post.title }}</a></h1>
	#<h1><a href="{% url 'post_detail' pk=post.pk %}">{{ post.title }}</a></h1>

	#<a href="/post/{{ post.id }}/">{{ post.title }}</a>
	#<a href="/post/new/" class="top-menu"><span class="glyphicon glyphicon-plus"></span></a>
	#{% url 'post_new' %}
	url(r'^$', views.post_list),
	url(r'^post/(?P<pk>[0-9]+)/$', views.post_detail, name='post_detail'),
	url(r'^post/new/$', views.post_new, name='post_new'),
	url(r'^post/(?P<pk>[0-9]+)/edit/$', views.post_edit, name='post_edit'),
]
