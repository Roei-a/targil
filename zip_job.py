#! /usr/bin/env python3
import os, sys, zipfile

name_list = ['a', 'b', 'c', 'd']
version = os.environ.get('VERSION')

for name in name_list:
    file = open(name + ".txt", "w")
    if not os.path.exists(name + ".txt"): 
        sys.exit("Failed to create file " + name)

for name in name_list:
    zip_name = name + "_" + version + ".zip"
    file_name = name + ".txt"
    with zipfile.ZipFile(zip_name, 'w') as myzip:
        myzip.write(file_name)
    if not os.path.exists(zip_name):
        sys.exit("Failed to create zip file " + name)
