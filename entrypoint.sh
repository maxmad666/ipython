#!/bin/bash

# set vars
#sed -i "/^CUCM_HOST/s/= ".*"/= \""$CUCM_HOST"\"/" /usr/src/app/config.py
#sed -i "/^CUCM_USER/s/= ".*"/= \""$CUCM_USER"\"/" /usr/src/app/config.py
#sed -i "/^CUCM_PASS/s/= ".*"/= \""$CUCM_PASS"\"/" /usr/src/app/config.py
#sed -i "/^CUCM_VERSION/s/= ".*"/= \""$CUCM_VERSION"\"/" /usr/src/app/config.py

# install requirements
pip install --no-cache-dir -r requirements.txt

# start app
ipython -i /usr/src/app/app.py
