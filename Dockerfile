# syntax=docker/dockerfile:1
FROM python:3.7
WORKDIR /app

COPY src src
COPY config.ini .
COPY credentials.ini .
COPY requirements.txt .
RUN pip3 install -r requirements.txt

CMD ["/bin/bash", "src/target.bash"]
