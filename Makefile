PORT ?= 8000
start:
	poetry run gunicorn -w 5 -b 0.0.0.0:$(PORT) video_to_mps.wsgi

migrate:
	poetry run python manage.py makemigrations
	poetry run python manage.py migrate