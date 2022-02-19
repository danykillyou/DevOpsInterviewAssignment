FROM python:3.7-alpine
COPY requirements.txt /requirements.txt
COPY microservice /microservice
ENV BITDAM=2
RUN apk add g++
RUN pip install virtualenv
RUN pip install -r requirements.txt

RUN python -m virtualenv venv
CMD ["python","microservice/main.py"]