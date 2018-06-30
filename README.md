# ipython
```bash
docker run -it --rm --name ipython maxmad/ipython

# run command
docker run -it --rm --name ipython maxmad/ipython ipython -c "print('Hello World!')"

# mount app volume
docker run -it --rm --name ipython \
-v "$PWD":/usr/src/app \
maxmad/ipython \
ipython app.py
```