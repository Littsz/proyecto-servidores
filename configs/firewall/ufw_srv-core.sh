#!/usr/bin/env bash
# ufw_srv-core.sh: reglas de firewall de SRV-CORE
# Uso: sudo ./ufw_srv-core.sh RED_DEL_LAB     (ej. 192.168.1.0/24)
set -euo pipefail
RED="${1:?Indica la red del laboratorio, ej. 192.168.1.0/24}"

ufw --force reset
ufw default deny incoming
ufw default allow outgoing
ufw allow from 10.0.2.0/24 to any port 22 proto tcp comment 'SSH por NAT de VirtualBox'
ufw allow from "$RED" to any port 22 proto tcp comment 'SSH red del laboratorio'
ufw allow from "$RED" to any port 445 proto tcp comment 'Samba'
ufw --force enable
ufw status numbered
