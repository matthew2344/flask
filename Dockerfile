FROM python:3.10

RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6  -y


WORKDIR /data
RUN git clone https://github.com/matthew2344/flask.git /data/app
WORKDIR /data/app


RUN pip install -r requirements.txt

EXPOSE 8080

ARG PORT
ENV PORT=6001

EXPOSE $PORT


CMD ["gunicorn", "-b", "0.0.0.0:6001", "main:app"]


#ENTRYPOINT [ "python" ]
#CMD ["docker build ./"]
#CMD ["docker docker run -d -p 8080:8080 test"]
#docker run -it -d -p 8080:8080 test
#docker exec -it test /bin/bash
#docker build -t test 
#docker run -d -p 8080:8080 test
