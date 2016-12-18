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

echo "# django_training" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/topecz/django_training.git
git push -u origin master

# https://github.com/Kunena/Kunena-Forum/wiki/Create-a-new-branch-with-git-and-manage-branches
## create new brach and checkout
git checkout -b tutorial_02
git status
git commit -a -m "Tutorial 02, working as expected"
git push --set-upstream origin tutorial_02

git stash		## forget changes not commited
git stash list [<options>]
git stash show [<stash>]
git stash drop [-q|--quiet] [<stash>]
git stash ( pop | apply ) [--index] [-q|--quiet] [<stash>]
git stash branch <branchname> [<stash>]
git stash [save [-p|--patch] [-k|--[no-]keep-index] [-q|--quiet]
	     [-u|--include-untracked] [-a|--all] [<message>]]
git stash clear
git stash create [<message>]
git stash store [-m|--message <message>] [-q|--quiet] <commit>