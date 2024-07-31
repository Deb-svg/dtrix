# Dtrix - Fake Hacking Tool

## Overview

Dtrix is a fake hacking tool designed for educational and demonstration purposes. It provides simulated hacking activities and matrix-style outputs to illustrate various security concepts. Dtrix is not intended for real-world hacking or malicious activities.

## Features

- **Fake Hacking Simulation**: Simulates network scans, port scans, and brute-force attacks.
- **Matrix Simulation**: Generates matrix-style patterns and logs matrix operations.
- **Cross-Platform Support**: Works on Linux and Termux environments.

## Installation

### Linux

1. **Clone the Repository**

    ```bash
    git clone https://github.com/Deb-svg/dtrix.git
    cd dtrix
    ```

2. **Install Dependencies**

    Make sure you have the required packages:

    ```bash
    sudo apt-get install -y nmap netcat hydra
    ```

3. **Build and Install**

    ```bash
    make build
    make install
    ```

### Termux

1. **Install Termux**

    Download and install Termux from the [Play Store](https://play.google.com/store/apps/details?id=com.termux) or [F-Droid](https://f-droid.org/packages/com.termux/).

2. **Update Termux Packages**

    ```bash
    pkg update
    ```

3. **Install Dependencies**

    ```bash
    pkg install nmap netcat hydra
    ```

4. **Clone the Repository and Install**

    ```bash
    git clone https://github.com/Deb-svg/dtrix.git
    cd dtrix
    ./tools-termux/termux-dtrix.cfg
    ```

5. **Build and Install**

    ```bash
    make build
    make install
    ```

## Usage

### Running on Linux

```bash
make run-linux
```

## Configuration

- **Linux**: Configuration file located at `tools-linux/linux_dtrix.cfg`.
- **Termux**: Configuration file located at `tools-termux/termux_dtrix.cfg`.

## Deletion

To delete the Dtrix directory and all its contents, follow these steps:

### Option 1: Normal Way
1. **Execute the shell file**
   ```bash
   ./rmdtrix.sh
   ```
The `rmdtrix.sh` will be outside dtrix directory

### Option 2: Create a Symbolic Link
1. **Create a Symbolic Link**
   ```bash
   ln -s $(pwd)/dtrix/rmdtrix.sh /usr/local/bin/rmdtrix
   chmod +x /usr/local/bin/rmdtrix
   ```
2. **Run the Script**
   ```
   rmdtrix
   ```
You will be prompted to confirm the deletion.

## Contributing

We welcome contributions to Dtrix! Please follow these steps to contribute:

1. **Fork the Repository**: Create your own fork of the Dtrix repository on GitHub.
2. **Create a Branch**: Create a new branch for your changes.
3. **Make Your Changes**: Implement your changes and test them.
4. **Submit a Pull Request**: Submit a pull request with a clear description of the changes.

## License

Dtrix is licensed under the [MIT License](LICENSE).

## Acknowledgements

- Thank you to the open-source community for providing the tools and resources used in this project.

***Disclaimer**: Dtrix is a tool for educational purposes only. It should not be used for any malicious activities or unauthorized access to systems.*
