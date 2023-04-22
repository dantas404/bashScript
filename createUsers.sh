#!bin/bash

mkdir /home/pub
mkdir /home/adm
mkdir /home/ven
mkdir /home/sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

useradd jeferson -m -s /bin/bash -p $(openssl passwd -crypt senha1234) -G GRP_ADM
useradd andre -m -s /bin/bash -p $(openssl passwd -crypt senha1234) -G GRP_ADM
useradd joana -m -s /bin/bash -p $(openssl passwd -crypt senha1234) -G GRP_ADM
useradd marcia -m -s /bin/bash -p $(openssl passwd -crypt senha1234) -G GRP_VEN
useradd pedro -m -s /bin/bash -p $(openssl passwd -crypt senha1234) -G GRP_VEN
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt senha1234) -G GRP_VEN
useradd iasmin -m -s /bin/bash -p $(openssl passwd -crypt senha1234) -G GRP_SEC
useradd tom -m -s /bin/bash -p $(openssl passwd -crypt senha1234) -G GRP_SEC
useradd higor -m -s /bin/bash -p $(openssl passwd -crypt senha1234) -G GRP_SEC

passwd jeferson -e
passwd andre -e
passwd joana -e
passwd marcia -e
passwd pedro -e
passwd joao -e
passwd iasmin -e
passwd tom -e
passwd higor -e

chown root:GRP_ADM /home/adm
chown root:GRP_VEN /home/ven
chown root:GRP_SEC /home/sec

chmod 770 /home/adm
chmod 770 /home/ven
chmod 770 /home/sec
chmod 777 /home/pub