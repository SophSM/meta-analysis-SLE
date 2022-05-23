#!/usr/bin/python
with open('/mnt/Citosina/amedina/ssalazar/meta/data/fastq/SRP296987/accession-list-SRP296987.txt', 'r') as fi$
    for line in file:
        if line !=(''):
            lineStrip = line.rstrip('\n')
            print('./run_pump.sh ' + lineStrip + ' ' + 'SRP296987')
