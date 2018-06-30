FROM python:alpine
MAINTAINER maxmad

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install --no-cache-dir ipython 
RUN pip install --no-cache-dir -r requirements.txt

CMD [ "ipython" ]