#!/usr/bin/python
with open('/mnt/Citosina/amedina/ssalazar/meta/data/fastq/SRP322015/accession-list-SRP322015.txt', 'r') as file:
    for line in file:
        if line !=(''):
            lineStrip = line.rstrip('\n')
            print('./run_pump.sh ' + lineStrip + ' ' + 'SRP322015')