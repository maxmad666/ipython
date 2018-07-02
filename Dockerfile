FROM python:alpine

RUN apk update && \
    apk add bash

WORKDIR /usr/src/app

COPY app/requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

RUN pip install --no-cache-dir ipython 

COPY app/. ./

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

# start it
CMD ["bash", "/entrypoint.sh"]