FROM python:3.10

WORKDIR /main

RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6  -y

RUN pip install -r requirements.txt

EXPOSE 8080
ENTRYPOINT ["python"]
CMD ["/main.py"]
