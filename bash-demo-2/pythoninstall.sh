#!/bin/bash

# Function to install a tool
install_tool() {
    local tool=$1

    if command -v $tool &> /dev/null; then
        echo "$tool is already installed."
    else
        echo "$tool is not installed. Installing $tool..."

        # Check OS type
        if [[ "$(uname)" == "Darwin" ]]; then
            # macOS installation using Homebrew
            if command -v brew &> /dev/null; then
                brew install $tool
            else
                echo "Homebrew is not installed. Please install Homebrew first."
                return 1
            fi
        elif [[ "$(uname)" == "Linux" ]]; then
            # Linux installation using APT (for Debian/Ubuntu)
            sudo apt update
            sudo apt install -y $tool
        else
            echo "Unsupported OS. Cannot install $tool."
            return 1
        fi

        # Verify installation
        if command -v $tool &> /dev/null; then
            echo "$tool has been installed successfully."
        else
            echo "Failed to install $tool. Please check your system or package manager."
        fi
    fi
}

# Install Git
install_tool "git"

# Install Python3 (note: 'python' may not point to Python 3 on some systems)
install_tool "python3"

echo "Installation check complete."

