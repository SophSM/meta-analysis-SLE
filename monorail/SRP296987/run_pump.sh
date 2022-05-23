#!/bin/bash
module load singularity/2.6
mkdir pump/$1
cd pump/$1
export NO_SHARED_MEM=1 && /mnt/Citosina/amedina/ssalazar/meta/monorail/monorail-external/singularity/run_reco$
        /mnt/Citosina/amedina/ssalazar/meta/monorail/recount-rs5-1.0.6.simg \
        $1 \
	$2 \
	hg38 \
	1 \
	/mnt/Citosina/amedina/ssalazar/meta/monorail/references
