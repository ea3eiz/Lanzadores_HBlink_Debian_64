#!/bin/bash

#dar permisos a los ficheros siguientes
cd /root/HBlink
chmod +x hb_confbridge.py
chmod +x hb_parrot.py
chmod +x loro.cfg
chmod +x hblink.cfg

cd /root/HBmonitor
chmod +x web_tables.py
chmod +x config.py

#creamos el lanzador HBmonitor:./web_tables.py
cd /root/

cd Lanzadores_HBlink_Debian_64

cp hbmonitor.local /etc

chmod +x /etc/hbmonitor.local

cp hbmonitor-local.service  /etc/systemd/system/

chmod +x /etc/systemd/system/hbmonitor-local.service

systemctl enable hbmonitor-local.service

#creamos el lanzador HBlink:

cp hblink.local /etc

chmod +x /etc/hblink.local

cp hblink-local.service  /etc/systemd/system/

chmod +x /etc/systemd/system/hblink-local.service

systemctl enable hblink-local.service

