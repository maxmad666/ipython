#!/bin/bash

# install requirements
pip install --no-cache-dir -r requirements.txt

# start app
ipython -i /usr/src/app/app.py
