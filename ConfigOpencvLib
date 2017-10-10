#!/bin/bash

echo "include /usr/local.lib" >> /etc/ld.so.conf
ldconfig
echo "PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig" >> /etc/bash.bashrc
echo "export PKG_CONFIG_PATH" >> /etc/bash.bashrc
source /ect/bash.bashrc
