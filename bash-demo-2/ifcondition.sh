#!/bin/bash
#read the number from the user 
tool="git"

if command -v $tool &> /dev/null; then
	echo "$tool is already installed."
else 
	echo "$tool is not installed. installing $tool..."

	#check if the system is macos
	
	if [[ "$(uname)" == "Darwin" ]]; then
		#installed git using homebrew for macOS
		brew installed $tool 
	elif [[ "$(uname)" == "Linux" ]]; then
		#installed git using apt for debian/ubantu
		sudo apt update
		sudo apt installed -y $tool
	else 
		echo "unsupported OS.canot installed $tool."
	fi
	#verify if git was installed successfully
	if command -v $tool &> /dev/null; then
		echo "$tool has been installed successfully."
	else 
		echo "failed to installed $tool please check your system or package manager."
	fi 

fi
#check and installed python3
tool="python"
if command -v $tool &> /dev/null; then
	echo "$tool is already installed."
else 
	echo "$tool is not installed. installing $tool .."
	#check if the system is macOS
	brew install $tool
elif [[ "$(uname)" == "Linux" ]]; then
	#installed Python3 using apt for debian/Ubutnu
	sudo apt update
	sudo apt install -y $tool
else
	echo "unsupported OS. Cannot Installed $tool."
fi

# verify if Python was installed Successfully 
if command -v $tool &> /dev/null;  then
	echo "$tool has been installed succesfully."
else 
	echo "failed to install $tool. please check your system or Package manager."
  fi

  fi



echo "installation check complete."
