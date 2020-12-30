FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
#RUN pip install flask
RUN pip install -r requirements.txt
RUN pip install gunicorn


#ENTRYPOINT ["python", "main.py"]
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]