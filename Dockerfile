FROM python:3.10.*

RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6  -y


RUN git clone https://github.com/matthew2344/flask.git

RUN pip install -r requirements.txt

ENTRYPOINT [ "python" ]

CMD ["main.py" ]
