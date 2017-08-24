# PYNQ-Demos

This repo stores the demos and examples for PYNQ.

## Guidelines

Each folder in this repository should be a self-contained demo package.

For new overlay demos, the folder should follow the same structure
as ``PYNQ/boards/Pynq-Z1/base/``:

<overlay_name>
- notebooks
- vivado
- <overlay_name>.bit / tcl / py

For new notebook demos, since there is no new overlay-related files,
the folder can follow a similar structure as:
``PYNQ/boards/Pynq-Z1/base/notebooks``:

<notebook_demo_name>
- images / data
- *.ipynb

Besides the above files, it is recommended to have:
- setup.sh : installing the demo for users automatically.
- README.md : providing brief introduction and useful information.

After git clone, users should be able to run ``setup.sh`` to install 
the corresponding demos.


## Reporting Issues
<a href="https://github.com/Xilinx/PYNQ-Dev" target="_blank">Report issues</a> 
if you have any trouble reproducing the demos or examples.

