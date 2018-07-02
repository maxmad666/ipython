#!/bin/bash

# install requirements
pip install --no-cache-dir -r requirements.txt

# start app.py if no arguments given
if [[ $# -eq 0 ]]
  then
    ipython -i /usr/src/app/app.py
  else
    ipython -i $@
fi