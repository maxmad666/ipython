## ipython console
```bash
docker run -it --name ipython \
-v requirements.txt:/usr/src/app/requirements.txt:ro \
maxmad/ipython
```

## run python function
```bash
docker run -it --rm --name ipython maxmad/ipython ipython -c \
'print("Hello World!")'
```

## mount app volume
```bash
docker run -it --rm --name ipython \
-v "$PWD":/usr/src/app \
maxmad/ipython \
ipython app.py
```

## "persistens"
```bash
docker run -it --name ipython \
-v "$PWD":/usr/src/app \
maxmad/ipython \
ipython app.py

docker start ipython
docker attach ipython
```