qlogin
cd /mnt/Citosina/amedina/ssalazar/meta/monorail/
mkdir human
cd human
mkdir -p annotations data_sources
cd annotations
mkdir -p exon_sums gene_sums
cd exon_sums
wget http://duffel.rail.bio/recount3/human/new_annotations/exon_sums/human.exon_sums.G029.gtf.gz
wget http://duffel.rail.bio/recount3/human/new_annotations/exon_sums/human.exon_sums.G026.gtf.gz
wget http://duffel.rail.bio/recount3/human/new_annotations/exon_sums/human.exon_sums.R109.gtf.gz
wget http://duffel.rail.bio/recount3/human/new_annotations/exon_sums/human.exon_sums.F006.gtf.gz
wget http://duffel.rail.bio/recount3/human/new_annotations/exon_sums/human.exon_sums.SIRV.gtf.gz
wget http://duffel.rail.bio/recount3/human/new_annotations/exon_sums/human.exon_sums.ERCC.gtf.gz
cd ../gene_sums
wget http://duffel.rail.bio/recount3/human/new_annotations/gene_sums/human.gene_sums.G029.gtf.gz
wget http://duffel.rail.bio/recount3/human/new_annotations/gene_sums/human.gene_sums.G026.gtf.gz
wget http://duffel.rail.bio/recount3/human/new_annotations/gene_sums/human.gene_sums.R109.gtf.gz
wget http://duffel.rail.bio/recount3/human/new_annotations/gene_sums/human.gene_sums.F006.gtf.gz
wget http://duffel.rail.bio/recount3/human/new_annotations/gene_sums/human.gene_sums.SIRV.gtf.gz
wget http://duffel.rail.bio/recount3/human/new_annotations/gene_sums/human.gene_sums.ERCC.gtf.gz

cd ../../data_sources
mkdir metaSLE
cd metaSLE
mkdir -p base_sums exon_sums gene_sums junctions metadata
cd base_sums
rsync --progress -rav /mnt/Citosina/amedina/ssalazar/meta/monorail/SRP*/pump_output/SRR*/*.all.bw .
cd ../exon_sums
rsync --progress -rav /mnt/Citosina/amedina/ssalazar/meta/monorail/SRP*/unify_output/unify/SRP*.unify/exon_sums_per_study/* .
cd ../gene_sums/
rsync --progress -rav /mnt/Citosina/amedina/ssalazar/meta/monorail/SRP*/unify_output/unify/SRP*.unify/gene_sums_per_study/* .
cd ../junctions/
rsync --progress -rav /mnt/Citosina/amedina/ssalazar/meta/monorail/SRP*/unify_output/unify/SRP*.unify/junction_counts_per_study/* .

# metaSLE.recount_project.SRP*.MD header
# rail_id external_id study project	organism	file_source	metadata_source	date_processed
# metaSLE.recount_qc.SRP*.MD header
# rail_id	study_acc	run_acc	aligned_reads%.chrm	aligned_reads%.chrx	aligned_reads%.chry	bc_auc.all_reads_all_bases	bc_auc.all_reads_annotated_bases	bc_auc.unique_reads_all_bases	bc_auc.unique_reads_annotated_bases	bc_auc.all_%	bc_auc.unique_%	bc_frag.count	bc_frag.kallisto_count	bc_frag.kallisto_mean_length	bc_frag.mean_length	bc_frag.mode_length	bc_frag.mode_length_count	exon_fc.all_%	exon_fc.unique_%	exon_fc_count_all.total	exon_fc_count_all.assigned	exon_fc_count_unique.total	exon_fc_count_unique.assigned	gene_fc.all_%	gene_fc.unique_%	gene_fc_count_all.total	gene_fc_count_all.assigned	gene_fc_count_unique.total	gene_fc_count_unique.assigned	intron_sum	intron_sum_%	star.%_of_chimeric_reads	star.%_of_chimeric_reads2	star.%_of_reads_mapped_to_multiple_loci	star.%_of_reads_mapped_to_multiple_loci2	star.%_of_reads_mapped_to_too_many_loci	star.%_of_reads_mapped_to_too_many_loci2	star.%_of_reads_unmapped:_other	star.%_of_reads_unmapped:_other2	star.%_of_reads_unmapped:_too_many_mismatches	star.%_of_reads_unmapped:_too_many_mismatches2	star.%_of_reads_unmapped:_too_short	star.%_of_reads_unmapped:_too_short2	star.all_mapped_reads	star.all_mapped_reads2	star.average_input_read_length	star.average_input_read_length2	star.average_mapped_length	star.average_mapped_length2	star.deletion_average_length	star.deletion_average_length2	star.deletion_rate_per_base	star.deletion_rate_per_base2	star.insertion_average_length	star.insertion_average_length2	star.insertion_rate_per_base	star.insertion_rate_per_base2	star.mapping_speed,_million_of_reads_per_hour	star.mapping_speed,_million_of_reads_per_hour2	star.mismatch_rate_per_base,_%	star.mismatch_rate_per_base,_%2	star.number_of_chimeric_reads	star.number_of_chimeric_reads2	star.number_of_input_reads	star.number_of_input_reads2	star.number_of_reads_mapped_to_multiple_loci	star.number_of_reads_mapped_to_multiple_loci2	star.number_of_reads_mapped_to_too_many_loci	star.number_of_reads_mapped_to_too_many_loci2	star.number_of_reads_unmapped:_other	star.number_of_reads_unmapped:_other2	star.number_of_reads_unmapped:_too_many_mismatches	star.number_of_reads_unmapped:_too_many_mismatches2	star.number_of_reads_unmapped:_too_short	star.number_of_reads_unmapped:_too_short2	star.number_of_splices:_at/ac	star.number_of_splices:_at/ac2	star.number_of_splices:_annotated_(sjdb)	star.number_of_splices:_annotated_(sjdb)2	star.number_of_splices:_gc/ag	star.number_of_splices:_gc/ag2	star.number_of_splices:_gt/ag	star.number_of_splices:_gt/ag2	star.number_of_splices:_non-canonical	star.number_of_splices:_non-canonical2	star.number_of_splices:_total	star.number_of_splices:_total2	star.uniquely_mapped_reads_%	star.uniquely_mapped_reads_%2	star.uniquely_mapped_reads_number	star.uniquely_mapped_reads_number2	junction_count	junction_coverage	junction_avg_coverage	star.number_of_input_reads_both	star.all_mapped_reads_both	star.number_of_chimeric_reads_both	star.number_of_reads_mapped_to_multiple_loci_both	star.number_of_reads_mapped_to_too_many_loci_both	star.number_of_reads_unmapped:_other_both	star.number_of_reads_unmapped:_too_many_mismatches_both	star.number_of_reads_unmapped:_too_short_both	star.uniquely_mapped_reads_number_both	star.%_mapped_reads_both	star.%_chimeric_reads_both	star.%_reads_mapped_to_multiple_loci_both	star.%_reads_mapped_to_too_many_loci_both	star.%_reads_unmapped:_other_both	star.%_reads_unmapped:_too_many_mismatches_both	star.%_reads_unmapped:_too_short_both	star.uniquely_mapped_reads_%_both
cd ../metadata
mkdir -p 15 41 59 87
cd /mnt/Citosina/amedina/ssalazar/meta/monorail/SRP311059/unify_output/unify/SRP311059.unify
mkdir -p /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/59/SRP311059
sort -k 2 qc_1.tsv > sorted-qc_1.tsv
sort -k 2 ids.tsv > sorted-ids.tsv
sed '1d' samples.tsv | sort -k 2 > sorted-samples.tsv

awk -v OFS='\t' '{ print $1,$2,$3,$3,"Homo sapiens","data_sources/metaSLE","data_sources/metaSLE","2022-05-30"} ' sorted-samples.tsv >> /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/59/SRP311059/metaSLE.recount_project.SRP311059.MD

gzip /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/59/SRP311059/metaSLE.recount_project.SRP311059.MD

awk '{ print $3}' sorted-ids.tsv > /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/59/SRP311059/rail-ids.tsv

sed '1d' sorted-qc_1.tsv | awk -v OFS='\t' '{ print "line",$0}' >> /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/59/SRP311059/qc.tsv

awk -v OFS='\t' 'FNR==NR{a[NR]=$1;next}{$1=a[FNR]}1' /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/59/SRP311059/rail-ids.tsv /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/59/SRP311059/qc.tsv >> /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/59/SRP311059/metaSLE.recount_qc.SRP311059.MD
gzip /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/59/SRP311059/metaSLE.recount_qc.SRP311059.MD
rm /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/59/SRP311059/rail-ids.tsv
rm /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/59/SRP311059/qc.tsv

##

cd /mnt/Citosina/amedina/ssalazar/meta/monorail/SRP111941/unify_output/unify/SRP111941.unify
mkdir -p /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/41/SRP111941
sort -k 2 qc_1.tsv > sorted-qc_1.tsv
sort -k 2 ids.tsv > sorted-ids.tsv
sed '1d' samples.tsv | sort -k 2 > sorted-samples.tsv

awk -v OFS='\t' '{ print $1,$2,$3,$3,"Homo sapiens","data_sources/metaSLE","data_sources/metaSLE","2022-05-30"} ' sorted-samples.tsv >> /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/41/SRP111941/metaSLE.recount_project.SRP111941.MD

gzip /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/41/SRP111941/metaSLE.recount_project.SRP111941.MD

awk '{ print $3}' sorted-ids.tsv > /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/41/SRP111941/rail-ids.tsv

sed '1d' sorted-qc_1.tsv | awk -v OFS='\t' '{ print "line",$0}' >> /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/41/SRP111941/qc.tsv

awk -v OFS='\t' 'FNR==NR{a[NR]=$1;next}{$1=a[FNR]}1' /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/41/SRP111941/rail-ids.tsv /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/41/SRP111941/qc.tsv >> /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/41/SRP111941/metaSLE.recount_qc.SRP111941.MD
gzip /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/41/SRP111941/metaSLE.recount_qc.SRP111941.MD
rm /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/41/SRP111941/rail-ids.tsv
rm /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/41/SRP111941/qc.tsv

##

cd /mnt/Citosina/amedina/ssalazar/meta/monorail/SRP296987/unify_output/unify/SRP296987.unify
mkdir -p /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/87/SRP296987

sort -k 2 qc_1.tsv > sorted-qc_1.tsv
sort -k 2 ids.tsv > sorted-ids.tsv
sed '1d' samples.tsv | sort -k 2 > sorted-samples.tsv

awk -v OFS='\t' '{ print $1,$2,$3,$3,"Homo sapiens","data_sources/metaSLE","data_sources/metaSLE","2022-05-30"} ' sorted-samples.tsv >> /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/87/SRP296987/metaSLE.recount_project.SRP296987.MD

gzip /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/87/SRP296987/metaSLE.recount_project.SRP296987.MD

awk '{ print $3}' sorted-ids.tsv > /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/87/SRP296987/rail-ids.tsv

sed '1d' sorted-qc_1.tsv | awk -v OFS='\t' '{ print "line",$0}' >> /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/87/SRP296987/qc.tsv

awk -v OFS='\t' 'FNR==NR{a[NR]=$1;next}{$1=a[FNR]}1' /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/87/SRP296987/rail-ids.tsv /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/87/SRP296987/qc.tsv >> /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/87/SRP296987/metaSLE.recount_qc.SRP296987.MD
gzip /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/87/SRP296987/metaSLE.recount_qc.SRP296987.MD
rm /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/87/SRP296987/rail-ids.tsv
rm /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/87/SRP296987/qc.tsv

##

cd /mnt/Citosina/amedina/ssalazar/meta/monorail/SRP322015/unify_output/unify/SRP322015.unify
mkdir -p /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/15/SRP322015
sort -k 2 qc_1.tsv > sorted-qc_1.tsv
sort -k 2 ids.tsv > sorted-ids.tsv
sed '1d' samples.tsv | sort -k 2 > sorted-samples.tsv

awk -v OFS='\t' '{ print $1,$2,$3,$3,"Homo sapiens","data_sources/metaSLE","data_sources/metaSLE","2022-05-30"} ' sorted-samples.tsv >> /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/15/SRP322015/metaSLE.recount_project.SRP322015.MD

gzip /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/15/SRP322015/metaSLE.recount_project.SRP322015.MD

awk '{ print $3}' sorted-ids.tsv > /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/15/SRP322015/rail-ids.tsv

sed '1d' sorted-qc_1.tsv | awk -v OFS='\t' '{ print "line",$0}' >> /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/15/SRP322015/qc.tsv

awk -v OFS='\t' 'FNR==NR{a[NR]=$1;next}{$1=a[FNR]}1' /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/15/SRP322015/rail-ids.tsv /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/15/SRP322015/qc.tsv >> /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/15/SRP322015/metaSLE.recount_qc.SRP322015.MD
gzip /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/15/SRP322015/metaSLE.recount_qc.SRP322015.MD
rm /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/15/SRP322015/rail-ids.tsv
rm /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE/metadata/15/SRP322015/qc.tsv

# metaSLE.recount_project.MD grabbing header:
# rail_id	external_id	study	project	organism	file_source	metadata_source	date_processed
cd /mnt/Citosina/amedina/ssalazar/meta/monorail/human/data_sources/metaSLE
zcat metadata/*/*/*recount_project.* | head -n 1 | gzip > metadata/metaSLE.recount_project.MD.gz
zcat metadata/*/*/*recount_project.* | grep -v rail_id | gzip >> metadata/metaSLE.recount_project.MD.gz