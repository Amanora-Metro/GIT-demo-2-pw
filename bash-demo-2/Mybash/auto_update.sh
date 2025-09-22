#!/bin/bash
echo "updating package list...."
sudo apt update
echo "updating packages..."
sudo apt upgrade -y
echo "cleaning up..."
sudo apt autoremove -y

