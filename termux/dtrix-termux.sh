#!/bin/bash

# Check for necessary dependencies
dependencies=("git" "python" "clang")
for dep in "${dependencies[@]}"; do
    if ! command -v $dep &> /dev/null; then
        echo "$dep could not be found. Please install it using 'pkg install $dep'."
        exit
    fi
done

# Navigate to the dtrix directory
cd $(dirname $0)

# Function for fake hacking simulation
fake_hacking() {
    echo "Starting fake hacking simulation..."
    cat ../scripts/fake_hacking/resources/fake_hack.txt
}

# Function for matrix simulation
matrix() {
    echo "Starting matrix simulation..."
    cat ../scripts/matrix/resources/matrix.txt
}

# Main menu
echo "Welcome to Dtrix"
echo "1. Fake Hacking"
echo "2. Matrix Simulation"
echo "3. Exit"
read -p "Choose an option: " option

case $option in
    1) fake_hacking ;;
    2) matrix ;;
    3) echo "Exiting..." ;;
    *) echo "Invalid option. Exiting..." ;;
esac
