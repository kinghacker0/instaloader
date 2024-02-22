#!/bin/bash

# Colors for text formatting
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

#Author - github.com/kinghacker0
#Credit - Give me credit if you use any part of this code.
clear
#Banner     

echo -e "\e[31m                                        ▄▄                          ▄▄         \e[2m";         
echo -e "\e[31m ▀████▀                   ██           ▀███                        ▀███        \e[2m";          
echo -e "\e[31m  ██                     ██             ██                          ██          \e[2m";        
echo -e "\e[31m  ██ ▀████████▄  ▄██▀████████ ▄█▀██▄    ██   ▄██▀██▄ ▄█▀██▄    ▄█▀▀███   ▄▄█▀██▀███▄███ \e[2m";
echo -e "\e[31m  ██   ██    ██  ██   ▀▀ ██  ██   ██    ██  ██▀   ▀███   ██  ▄██    ██  ▄█▀   ██ ██▀ ▀▀ \e[2m";
echo -e "\e[31m  ██   ██    ██  ▀█████▄ ██   ▄█████    ██  ██     ██▄█████  ███    ██  ██▀▀▀▀▀▀ ██   \e[2m";  
echo -e "\e[31m  ██   ██    ██  █▄   ██ ██  ██   ██    ██  ██▄   ▄███   ██  ▀██    ██  ██▄    ▄ ██    \e[2m"; 
echo -e "\e[31m ▄████▄████  ████▄██████▀ ▀████████▀██▄▄████▄ ▀█████▀▀████▀██▄ ▀████▀███▄ ▀█████▀████▄  \e[2m"; 
echo -e "\e[32m                                 \e[0m"
echo -e "\e[97m[-]Coded By: github.com/kinghacker0                                             \e[2m";
echo -e "\e[97m[-]Visit for more: www.hackersking.in                                           \e[2m";                                                                                        
echo -e "\e[32m                                 \e[0m"
# Function to display the list of available options
display_options() {
    echo -e "${GREEN}Instaloader Options:${NC}"
    echo -e "${YELLOW}1. Download profile pictures${NC}"
    echo -e "${YELLOW}2. Download all posts by a user${NC}"
    echo -e "${YELLOW}3. Download stories${NC}"
    echo -e "${YELLOW}4. Download highlights${NC}"
    echo -e "${YELLOW}5. Download tagged posts${NC}"
}

# Function to download profile pictures
download_profile_pictures() {
    read -p "Enter the username: " username
    instaloader --no-videos --no-metadata-json --no-captions --no-compress-json --no-posts $username
}

# Function to download all posts by a user
download_all_posts() {
    read -p "Enter the username: " username
    instaloader --no-videos --no-metadata-json --no-captions --no-compress-json $username
}

# Function to download stories
download_stories() {
    read -p "Enter the username: " username
    instaloader --stories $username
}

# Function to download highlights
download_highlights() {
    read -p "Enter the username: " username
    instaloader --highlights $username
}

# Function to download tagged posts
download_tagged_posts() {
    read -p "Enter the username: " username
    instaloader --tagged $username
}

# Main script
display_options
read -p "Enter your choice (1-5): " choice

case $choice in
    1) download_profile_pictures ;;
    2) download_all_posts ;;
    3) download_stories ;;
    4) download_highlights ;;
    5) download_tagged_posts ;;
    *) echo -e "${RED}Invalid choice. Please select a valid option.${NC}" ;;
esac
