# meta-analysis-SLE
This is a meta-analysis on expression data conducted on different SLE patients versus control experiments that were found in the Gene Expression Omnibus (GEO) database.

This meta-analysis contains the pipeline used for uniform processing of bulk RNA-seq expression data, using the `monorail external` software, which was used for uniformly process data in the Recount3 project. (See the `About the monorail pipeline` section for further information about the pipeline)

This meta-analysis pipeline then incorporates the output from the `monorail external`software as a RSE object in `R`: (`download-1.Rmd`), then uniformly categorizes samples (`curation-2.Rmd`), normalizes expression data (`normalization-3.Rmd`), performs differential expression analysis (`DE-4.Rmd`), merges all datasets into a single one (`merge-5.Rmd`) and finally performs meta-analysis using different statistical approaches as well as gene ontology analysis (`meta-analysis-6.Rmd`). 

# About the monorail pipeline

The extact commands that were used for both the `pump` module and the `unify` module are in `monorail/monorail-pipeline.Rmd`. In order to load the output into R, a specific arrangement of the output files in a folder needs to be followed and is specified in the `monorail-external` documentation at https://github.com/langmead-lab/monorail-external. Additionally, the commands used for the creation of this folder in this meta-analysis can be found in the `monorail/get-human-folder.sh` script and the rough setup is the following:

```
└── human
    ├── annotations
    │   ├── exon_sums
    │   │   ├── human.exon_sums.ERCC.gtf.gz
    │   │   └── human.exon_sums.F006.gtf.gz
    │   │   └── human.exon_sums.G026.gtf.gz
    │   │   └── human.exon_sums.G029.gtf.gz
    │   │   └── human.exon_sums.R109.gtf.gz
    │   │   └── human.exon_sums.SIRV.gtf.gz
    │   └── gene_sums
    │       ├── human.gene_sums.ERCC.gtf.gz
    │       └── human.gene_sums.F006.gtf.gz
    │       └── human.gene_sums.G026.gtf.gz
    │       └── human.gene_sums.G029.gtf.gz
    │       └── human.gene_sums.R109.gtf.gz
    │       └── human.gene_sums.SIRV.gtf.gz
    ├── data_sources
    │   └── metaSLE
    │       ├── base_sums
    │       ├── exon_sums
    │       │   ├── 15
    │       │   │   └── SRP322015
    │       │   │       ├── metaSLE.exon_sums.SRP322015.ERCC.gz
    │       │   │       ├── metaSLE.exon_sums.SRP322015.F006.gz
    │       │   │       ├── metaSLE.exon_sums.SRP322015.G026.gz
    │       │   │       ├── metaSLE.exon_sums.SRP322015.G029.gz
    │       │   │       ├── metaSLE.exon_sums.SRP322015.R109.gz
    │       │   │       └── metaSLE.exon_sums.SRP322015.SIRV.gz
    │       │   ├── 41
    │       │   │   └── SRP111941
    │       │   │       ├── metaSLE.exon_sums.SRP111941.ERCC.gz
    │       │   │       ├── metaSLE.exon_sums.SRP111941.F006.gz


    │       ├── gene_sums
    │       │   ├── 15
    │       │   │   └── SRP322015
    │       │   │       ├── metaSLE.gene_sums.SRP322015.ERCC.gz
    │       │   │       ├── metaSLE.gene_sums.SRP322015.F006.gz
    │       │   │       ├── metaSLE.gene_sums.SRP322015.G026.gz
    │       │   │       ├── metaSLE.gene_sums.SRP322015.G029.gz


    │       ├── junctions
    │       │   ├── 15
    │       │   │   └── SRP322015
    │       │   │       ├── metaSLE.junctions.SRP322015.ALL.ID.gz
    │       │   │       ├── metaSLE.junctions.SRP322015.ALL.MM.gz
    │       │   │       ├── metaSLE.junctions.SRP322015.ALL.RR.gz

    │       └── metadata
    │           ├── 15
    │           │   └── SRP322015
    │           │       ├── metaSLE.recount_project.SRP322015.MD.gz
    │           │       ├── metaSLE.recount_qc.SRP322015.MD.gz
   

    │           ├── 41
    │           │   └── SRP111941
    │           │       ├── metaSLE.recount_project.SRP111941.MD.gz
    │           │       ├── metaSLE.recount_qc.SRP111941.MD.gz
   

    │           └── metaSLE.recount_project.MD.gz
    └── homes_index
```

