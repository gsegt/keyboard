# DZ60 60% Mechanical Keyboard PCB

## This repository

This config is **ONLY** suitable for the V1 (DZ60 Rev 3.0) **NOT** the V2 (DZ60 V2 Flex-cut).

> [!IMPORTANT]
> The layout is meant to be used with the [EurKey layout](https://eurkey.steffen.bruentjen.eu/start.html).

## QMK setup

Clone this repository. It holds a fake new keyboard with only custom changes. It requires needs to be cloned in the `qmk_firmwares/keyboard` directory of QMK in order to be usable.

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

Finally, run the setup and follow instructions:

    ```sh
    qmk setup --home ./qmk_firmware
    ```

## Flashing the keyboards

To flash, run the following:

    ```sh
    sh flash-board.sh
    ```

If you are using VSCode, you can use the task feature with `Ctrl+Shift+B`.

> [!NOTE]
> This task also builds the board. Your hex file will be in the `builds` folder.
