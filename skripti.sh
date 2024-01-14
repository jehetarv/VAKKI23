#!/bin/python3
import re
import sys

file_name = sys.argv[1]
fp = open(file_name)
data = fp.read()

lines = data.split('VIESTIxALKU')

tiede = []

for line in lines:
  line = line.split('\n')
  for token in line:
    if token == '_tiede_':
      tiede.append(line)
    else:
      continue

lauseet = {''}

for i in tiede:
  lause = (' '.join(i))
  lauseet.add(lause)

valmis_data = ''

for i in lauseet:
  valmis_data = valmis_data + '\n' + i
  valmis_data = valmis_data.replace('VIESTIxLOPPU', '\n')

print(valmis_data)


