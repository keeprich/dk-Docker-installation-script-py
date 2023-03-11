#!/usr/bin/python3

# System inventory

import os

command_list = ['nproc', 'free-m', 'lsblk',]

for item in command_list:
  os.system(item)19880
