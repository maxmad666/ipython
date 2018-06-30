FROM python:alpine

WORKDIR /usr/src/app

COPY requirements.txt ./
COPY app.py ./

RUN pip install --no-cache-dir ipython 
RUN pip install --no-cache-dir -r requirements.txt

CMD [ "ipython", "-i", "app.py" ]
