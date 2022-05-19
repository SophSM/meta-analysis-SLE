#!/usr/bin/python
with open('/mnt/Citosina/amedina/ssalazar/meta/data/fastq/SRP311059/accession-list-SRP311059.txt', 'r') as file:
    for line in file:
        if line !=(''):
            lineStrip = line.rstrip('\n')
            print('./run-pump-local.sh ' + lineStrip + ' ' + 'SRP311059')
