FROM python:alpine

WORKDIR /usr/src/app

COPY app/requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

RUN pip install --no-cache-dir ipython 

COPY app/. ./

CMD [ "ipython", "-i", "app.py" ]
