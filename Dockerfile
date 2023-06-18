FROM python:3.8-slim-buster

WORKDIR /num-plate-detection-docker

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "api", "run", "--host=0.0.0.0"]