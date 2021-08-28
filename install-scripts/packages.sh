#!/bin/bash

message info "Updating system cache..."
sudo apt update
sudo apt upgrade -y

message info "Installing wget & curl..."
sudo apt install wget curl -y

message info "Installing htop..."
sudo apt install htop -y

message info "Installing vim..."
sudo apt install vim -y
