#!/bin/bash
# Copyright (c) 2022-2023 Curious <https://www.curious.host>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
# 
# https://github.com/Curious-r/OpenWrtBuildWorkflows
# Description: Automatically check OpenWrt source code update and build it. No additional keys are required.
#-------------------------------------------------------------------------------------------------------
#
#
# Patching is generally recommended.
# # Here's a template for patching:
#touch example.patch
#cat>example.patch<<EOF
#patch content
#EOF
#git apply example.patch
sed -i 's/192.168.1.1/192.168.100.1/g' package/base-files/files/bin/config_generate
# sed -i 's/73a2498dc95934c225d358707e7f7d060b5ce81aa45260ada09cbd15207d27d1/5279eb1cb7555cf9292423cc9f672dc43e6e214b3411a6df26a6a1cfa59d88b7/g' feeds/helloworld/ipt2socks/Makefile
mkdir -p files/etc/hotplug.d/block && curl -fsSL https://raw.githubusercontent.com/281677160/openwrt-package/usb/block/10-mount > files/etc/hotplug.d/block/10-mount
