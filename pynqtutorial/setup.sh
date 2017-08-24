#!/bin/bash

sudo chown -R xilinx:xilinx /home/xilinx/jupyter_notebooks
sudo chown -R xilinx:xilinx /opt/python3.6/lib/python3.6/site-packages/pynq

cp -rf ./notebooks/pynqtutorial /home/xilinx/jupyter_notebooks/

rm -rf /home/xilinx/pynq/overlays/pynqtutorial
mkdir /home/xilinx/pynq/overlays/pynqtutorial
cp -rf ./*.bit /home/xilinx/pynq/overlays/pynqtutorial/
cp -rf ./*.tcl /home/xilinx/pynq/overlays/pynqtutorial/
cp -rf ./*.py /home/xilinx/pynq/overlays/pynqtutorial/

echo "Setup Completed"
