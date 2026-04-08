#FROM ubuntu:20.04
#RUN apt update && apt install python3 -y && apt install python3-flask -y
#COPY app.py /tmp
#EXPOSE 8080
#CMD ["python3", "/tmp/app.py"]
FROM ubuntu:20.04

RUN apt update && \
    apt install -y python3 python3-pip

RUN pip3 install flask

WORKDIR /app
COPY app.py .

EXPOSE 8080

CMD ["python3", "app.py"]
