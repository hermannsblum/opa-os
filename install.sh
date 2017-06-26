sudo apt-get install geary pidgin libpurple-bin
sudo add-apt-repository ppa:nilarimogard/webupd8
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install telegram-purple google-chrome-stable
(pidgin &)
echo "please add a telegram account and enter the name of the account to be contacted for support:"
read supportperson
sudo echo "#! /bin/bash \n pidgin & sleep 1 & wmctrl -c "Buddy List" & purple-remote "telegram:goim?screenname=$supportperson" > /usr/local/bin/supportchat.sh
