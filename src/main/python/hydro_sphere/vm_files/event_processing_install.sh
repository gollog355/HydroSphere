#!/bin/bash
set -e

#wget https://github.com/carbon-ml/event-processing/archive/master.zip && unzip master.zip
#git clone https://github.com/carbon-ml/event-processing.git && unzip master.zip
#git clone https://tahir.@github.com/carbon-ml/event-processing.git
#hydra_instance.run_cmd("wget https://github.com/lake-lerna/hydra/archive/master.zip && unzip master.zip")
sudo apt-get install -y python-numpy python-scipy cython
pushd  event-processing/event_extraction && sudo pip install -r requirements.txt && popd
pushd event-processing/magichour && sudo pip install . && popd