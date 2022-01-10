#!/bin/bash

# 修改Padavan登陆地址
sed -i 's/192.168.2.1"/10.0.0.1"/' trunk/user/shared/defaults.h
sed -i 's/192.168.2.100/192.168.5.50/' trunk/user/shared/defaults.h
sed -i 's/192.168.2.244/192.168.5.100/' trunk/user/shared/defaults.h
