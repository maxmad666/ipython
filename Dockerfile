FROM python:alpine

WORKDIR /usr/src/app

COPY app/requirements.txt ./
COPY app/. ./

RUN pip install --no-cache-dir ipython 
RUN pip install --no-cache-dir -r requirements.txt

CMD [ "ipython", "-i", "app.py" ]
