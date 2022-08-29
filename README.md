# meta-analysis-SLE
This is a meta-analysis on expression data conducted on different SLE patients versus control experiments that were found in the Gene Expression Omnibus (GEO) database.

This meta-analysis contains the pipeline used for uniform processing of bulk RNA-seq expression data, using the `monorail external` software, which was used for uniformly process data in the Recount3 project. (See the `monorail` vignette for further information about the pipeline)

This meta-analysis pipeline then incorporates the output from the `monorail external`software as a RSE object in `R`: (`download-1.Rmd`), then uniformly categorizes samples (`curation-2.Rmd`), normalizes expression data (`normalization-3.Rmd`), performs differential expression analysis (`DE-4.Rmd`), merges all datasets into a single one (`merge-5.Rmd`) and finally performs meta-analysis using different statistical approaches as well as gene ontology analysis (`meta-analysis-6.Rmd`). 

