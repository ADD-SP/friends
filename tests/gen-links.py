#!/bin/python3

import yaml
import os

yaml_path ="links.yml"

file = open(yaml_path, 'r', encoding="utf-8")
file_data = file.read()
file.close()

yaml_list = yaml.safe_load(file_data)
links=""

for item in yaml_list:
    url = item['url']
    avatar = item['avatar']
    text = ""
    if 'blog' in item:
        text = item['blog']
    else:
        text = item['name']

    links +=url + "\n" + avatar + "\n"


file = open('tests/links.txt', 'w', encoding='utf-8')
file.write(links)
file.close()



