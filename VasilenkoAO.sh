#RIGHTS
#1
#su - student
touch all.txt
#2
chmod 444 all.txt
#3
ls >> all.txt
#Permission denied
#4
sudo ls >> all.txt
#Permission denied
#5
#echo '%wheel ALL=(ALL) ALL' >/etc/sudoers.d/wheel
#addgroup student wheel
sudo groupadd restricted
sudo chown :restricted restricted.txt
#6
chmod 660 restricted.txt
#7
mkdir rights
cd rights/
#bash
touch file{1..10}
touch .nofile
#8
sudo chmod 200 -R *
#9 не поменялись
#10
umask
0002
#11
umask 077
touch my.txt
# 12
touch 000.txt
chmod 000 000.txt
chmod 666 000.txt 
# Можно поменять права обратно
chmod 000 000.txt
rm 000.txt 
# Можно удалить с подтверждением. С sudo подтверждение не нужно

# Process
#1
sleep 100 &
#2 stopped mc 
#3 Смотрим запущенные задачи интерпретатора командой jobs, для возобновления работы используем  команду fg :fg %number
#4

