#!/bin/bash
#set -e
##################################################################################################################
# Author 	: 	Erik Dubois
# Website 	: 	https://www.erikdubois.be
# Website	:	https://www.arcolinux.info
# Website	:	https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxforum.com
###############################################
# Modificato:   marcocalza-ita
###############################################

# controllando se ho gli ultimi file da github
echo "Verifica prima i file più recenti online"
git pull

# Il comando sotto eseguirà il backup di tutto all'interno della cartella del progetto
git add --all .

# Se lo desideri, dai un commento al commit
echo "####################################"
echo "Scrivi il tuo commento di commit!"
echo "####################################"

read input

# Effettuare il commit nel repository locale con un messaggio 
# contenente i dettagli dell'ora e il testo di commit

git commit -m "$input"

# Push il tuo file locale su github

git push -u origin master


echo "################################################################"
echo "###################    Git Push Fatto     ######################"
echo "################################################################"
