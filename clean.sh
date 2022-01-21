########## BEFORE YOU RUN THESE COMMANDS ##########
#Install Theese package first : sudo pacman -S ncdu rmlint pacman-contrib
#Install this program called stacer : yay -S stacer
#Check your chace files using command : ncdu
#Do the cleaning :

sudo pacman -Sc
sudo pacman -Scc

paccache -r

sudo pacman -Qtdq
sudo pacman -Rns $(pacman -Qtdq)

rm -rf ~/.cache/*

rmlint /home/virgilnr

sudo journalctl --vacuum-size=50M
sudo journalctl --vacuum-time=4weeks

#Check .config
#Check .local/share
#Run Stacer
