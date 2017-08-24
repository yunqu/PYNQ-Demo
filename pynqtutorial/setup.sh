#!/bin/bash

sudo chown -R xilinx:xilinx /home/xilinx/jupyter_notebooks
sudo chown -R xilinx:xilinx /opt/python3.6/lib/python3.6/site-packages/pynq

cp -rf ./jupyter_notebooks/pynqtutorial /home/xilinx/jupyter_notebooks/
cp -rf ./overlays/pynqtutorial /home/xilinx/pynq/overlays/

echo "Setup Completed"
