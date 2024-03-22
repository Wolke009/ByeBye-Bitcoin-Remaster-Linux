#!/bin/bash

echo "Installing required packages..."
pip install -r requirements.txt

if [ "$?" -ne "0" ]; then
    echo "Failed to install required packages."
    echo "Press any key to exit..."
    read -n 1 -s
    exit 1
fi

echo "Running the script..."
python main.py

echo "Script execution completed."
echo "Press any key to exit..."
read -n 1 -s

