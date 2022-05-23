#!/usr/bin/python
with open('/mnt/Citosina/amedina/ssalazar/meta/data/fastq/SRP111941/accession-list-SRP111941.txt', 'r') as fi$
    for line in file:
        if line !=(''):
            lineStrip = line.rstrip('\n')
            print('./run_pump.sh ' + lineStrip + ' ' + 'SRP111941')
