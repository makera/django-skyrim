docker build -t skyrim .
docker run -dp 8000:8000 -v C:\Users\User\PycharmProjects\django-skyrim:/app skyrim