# DZ60 60% Mechanical Keyboard PCB

## This repository

This config is suitable for the V1 (DZ60 Rev 3.0) only.

## Open in VSCode

You can open this project in VSCode with the workspace file in the .vscode folder.

## QMK setup

Clone this repository. It holds a fake new keyboard with only custom changes. It requires needs to be cloned in the "qmk_firmwares/keyboard" directory of QMK in order to be usable.

    ```sh
    git clone https://github.com/ickule/keyboard.git --recurse-submodules && cd keyboard
    ```

Now, we want to setup setup qmk in a virtual environment.
To install the necessary packages and python modules, run the following:

    ```sh
    sudo apt install -y git python-is-python3 python3-venv
    python -m venv .venv
    source .venv/bin/activate (or .venv/bin/activate.fish)
    python -m pip install -U -r requirements.txt
    ```

Finally, run the setup and follow intructions:

    ```sh
    qmk setup --home qmk_firmware
    ```

## Compiling the keyboard

To compile after the previous section setup, run the following:

    ```sh
    sh build-board.sh
    ```
