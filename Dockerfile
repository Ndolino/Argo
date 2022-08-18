
# Using official python runtime base image
FROM python:3.9.2

WORKDIR python-docker

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]


#to be runned in the deployment server
#docker build --tag python-docker .
#docker run -d -p 5000:5000 python-docker
