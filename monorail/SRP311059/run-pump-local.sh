#!/bin/bash
module load singularity/2.6
mkdir pump/$1
cd pump/$1
export NO_SHARED_MEM=1 && /mnt/Citosina/amedina/ssalazar/meta/monorail/monorail-external/singularity/run_recount_pump.sh \
        /mnt/Citosina/amedina/ssalazar/meta/monorail/recount-rs5-1.0.6.simg \
        $1 \
        local \
        hg38 \
        1 \
        /mnt/Citosina/amedina/ssalazar/meta/monorail/references \
        /mnt/Citosina/amedina/ssalazar/meta/data/fastq/$2/trim-galore/$1_1_val_1.fq.gz \
        /mnt/Citosina/amedina/ssalazar/meta/data/fastq/$2/trim-galore/$1_2_val_2.fq.gz \
        $2
