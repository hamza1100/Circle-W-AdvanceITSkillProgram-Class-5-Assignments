touch Dockerfile

echo "FROM python:3" > Dockerfile
echo "RUN pip3 install django" >> Dockerfile
echo "COPY . ." >> Dockerfile
echo "Run python manage.py migrate" >> Dockerfile
echo "CMD ["python", "manage.py", "runserver", "0.0.0.0:8001"]" >> Dockerfile

image_tag="django-app"

sudo docker build -t "$image_tag" .

container_id=$(sudo docker run -p 8000:8000 -d "$image_tag")
