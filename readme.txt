# Pulling base image from:
https://hub.docker.com/_/python

#Build container:
docker build --no-cache -t tol:latest -f Dockerfile .

#Run docker:
docker run --name anatolii tol:latest

#In other terminal:
#Go inside container:
docker exec -it anatolii bash
ls
pytest test_one.py
exit
