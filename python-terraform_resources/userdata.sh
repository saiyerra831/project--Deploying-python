#!/bin/bash
      sudo apt update
      sudo apt upgrade
      sudo apt full-upgrade
      sudo apt-get install python3-pip -y
      sudo apt install git -y
      sudo git clone https://github.com/krishnanaidu99/flight-perdiction.git
      cd flight-perdiction/
      pip3 install -r requirements.txt
      python3 app.py
      screen -m -d python3 app.py 

