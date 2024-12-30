# DZ60 60% Mechanical Keyboard PCB

## This repository

This config is **ONLY** suitable for the V1 (DZ60 Rev 3.0) **NOT** the V2 (DZ60 V2 Flex-cut).

> [!IMPORTANT]
> The layout is meant to be used with the [EurKey layout](https://eurkey.steffen.bruentjen.eu/start.html).

## QMK setup

We want to setup setup qmk in a virtual environment.
To install the necessary packages and python modules, run the following:

    ```sh
    sudo apt install -y git python-is-python3 python3-venv
    python -m venv .venv
    source .venv/bin/activate (or .venv/bin/activate.fish)
    python -m pip install -U -r requirements.txt
    ```

Run the setup and follow instructions to clone and setup qmk firmware:

    ```sh
    qmk setup --home ./qmk_firmware
    ```

## Compiling the firmware

To compile, run the following:

    ```sh
    sh compile-board.sh
    ```

If you are using VSCode, you can use the task feature with `Ctrl+Shift+B`.

> [!NOTE]
> Your hex file will be in the `builds` folder.
