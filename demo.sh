#disable spotlight indexing
sudo mdutil -i off -a

#Create new account
sudo dscl . -create /Users/sam
sudo dscl . -create /Users/sam UserShell /bin/bash
sudo dscl . -create /Users/sam RealName "sam"
sudo dscl . -create /Users/sam UniqueID 1001
sudo dscl . -create /Users/sam PrimaryGroupID 80
sudo dscl . -create /Users/sam NFSHomeDirectory /Users/sam
sudo dscl . -passwd /Users/sam $1
sudo dscl . -passwd /Users/sam $1
sudo createhomedir -c -u sam > /dev/null

su -s /bin/bash sam
