---
layout: page
title: Lifecycle
id: lifecycle
---
This page describes a typical trait data life cycle

This trait data life cycle may show some differences with respect to the more general 'data life cycle' (see below) often referred to in data management contexts.

From the point of view of a researcher, the life cycle commonly consist of the following phases: 

 a. formulate [research question](#research-question), 

 b. [gather/re-use/generate datasets and standardised terms](#gather_data), 

 c.  copy/version gathered datasets and terms, 

 d. [transform datasets into a format suitable for synthesis (aka data handling)](#data_handling), 
 
 e. select/filter data of interest, explore data/fix bugs, 
 
 f. create a new dataset (along with source data) for re-use, 
 
 g. analyze data, 
 
 h. write paper using the data publication, 
 
 i. peer-review research and associated data, 
 
 j. research paper is published, 
 
 k. publish dataset in data journal, 
 
 l. register dataset in OTN

Steps (a), (g), (h) are purely research steps. Steps (b)-(l) cover the data cycle. They are (ideally) mutually beneficial processes: the research re-using as much as existing data as possible, uncover data quality issues, and help contribute new data when needed.

In the Open Trait Network, many tools already exist to help facilitate the phases of trait-based research. 

Below, you can find detailed descriptions of the trait data lifecycles. Also, you'll find descriptions of related tools and datasets that already exist. 

![Data Lifecycle](https://above.nasa.gov/images/data_cycle_updated06272016.png)
Figure from: https://above.nasa.gov/implementation_plan/data_cycle.html
> [name=Caterina Penone]At some point we should probably define what we mean by trait data. Is it only trait values + metadata or also ontologies, taxonomies, vocabularies..From the content of the page I don't think it's super clear

# Research questions 

>> general description of research question rather than a list of questions (done to death)
>> Josh M to flesh out.

What makes a good trait-based question?

- Trait-based questions are merely an extension of taxonomic-based questions in ecology and evolution. These questions label taxa by something more quantitative and biologically meaningful than a name. 
- These questions allow us explore why species in group A are different from species in group B from a mechanistic persepctive. That is, trait help determine what the different groups are actually doing, how they are doing it, how they affect other organisms and higher-level patterns and processes, right up to the ecosystem level.
- Trait-based questions link organismal performance to environment.

- In essence, good trait-based question, much like macroecological/macroevolution, because they incorporate  elements of biogeography, phylogeny, intraspecific variation, etc. 
- 
- to investigate questions relevant to environmental response, community interactions, invasion, and conservation...
- Link performance to environment
- Allow mechanistic links between organism and processes
- Trait-based questions shoudl considered two or more dimensions: many species, many traits, evolution time, large space / biogeography. In this way they tend to be macroecological
- Trait datasets can span different ideas with the same data
- Revisit your dataset with new hypotheses
- Comparable across domains - same question applied to many taxa ("on top of taxa")
Example of research questions include:
[We could list here  100  interesting questions in trait research]
- Relationships of traits with geography, climate, vegetation, ...
- Relationships of traits with phylogeny
- Relationships of traits to processes (carbon aquisition, nutrient cycling, water use)
- Traits as ecological indicators for ecosystem services
- Role of traits for nature's contribution to people
- Role of traits in determining use by humans 
- Traits and conservation, e.g. traits of species at risk
- Trait and restauration ecology 
- Traits and global change (climate, land-use,..)
- Traits of invasive species
- Effects of past (climate, isolation..) on traits
- Community-weighted trait values (means, variances, skewness)
- The role of traits in biotic interactions
- Co-occurrence of traits among different trophic groups
- Temporal change in trait values
- Traits reflecting optimality principles
- Predictability
...

# Gather Data
Trait data are essential to answer research questions and test theories. Trait datasets (Data) are usually gathered to answer specific reasearch questions or assembled from existing sources for synthesis projects or to create trait databases. They can be created from original observations and measurements, mobilized from the literature or undigitized legacy data, or re-used from data publications of other contexts. Data compilations can combine both existing and new data. New datasets can contain information collected in the field, in experiments, on zoo specimen but can also be transcribed from existing analog research resources like natural history collections, literature and reports. New data can also be genereated by modelling (or imputation) based on existing trait, environment or phylogenetic information. Creating new datasets is often expensive, but re-use of existing data also requires some resources, especially in terms of time and labor. The value of existing datasets for their re-use increases with the quality of their auxillary data and documentation and datasets with good metadata are more likely to be reused or included in larger databases.

> [name=Caterina Penone] Not sure how/where to include this: "Increasing the scope of the research, Generalization"

## Measuring data
Data generation through own measurements can be perfored on observations of life specimens in nature, sampled and preserved specimens, or collection and herbaria specimens. For this purpose, and to allow comparison of data across datasets, following established data standards and protocols is very important. Measurement protocols can be developed along the own research question, but ideally should follow collection standards of subdisciplines which provide instructions on how to obtain the primary data while ruling out sources of measurement error, e.g. by repeated measuring. Sampling protocolls may also define auxilliary data or metadata that should be assessed as covariates of the measurement procedure. 
This provides the context of the measurement or observation and helps future users to better understand and reproduce the methods.  Deciding which data to collect often involves considerations of not only which traits are more useful, but also which traits are commonly collected and the time and expense involved in collecting or processing the data.

- develop measurement protocol along the research question
- collection standards for subdisciplines
    - Botany
        - https://www.publish.csiro.au/BT/BT02124
        - http://www.nucleodiversus.org/index.php?mod=page&id=79&lang=en
        - phenology: https://link.springer.com/article/10.1007/s00484-014-0789-5
    - Zoology
        - Terrestrial Invertebrates
            - https://besjournals.onlinelibrary.wiley.com/doi/full/10.1111/1365-2435.12776%4010.1111/%28ISSN%291365-2435.SICB_2018
  - repetitive measures
  - individual marking/capturing

## Mobilizing trait data

Transcribe Existing Analog Resources 
but also transcribing data from paper-based, or non-machine readable (e.g., pdf, docx, html), resource like scientific publications, specimen labels, natural history museum catalogs, government report, and PhD/master theses.

Another form of data mobilization is the extraction of structured trait data from unstructured sources like natural language texts or images (e.g. of plants), websites or scans of books/tables. [*Caterina: should this stay here or go in the previous section "data generation"?*].

- Compilation of data from literature, museum records, herbaria..
    - Potential Sources:
        - Floras
        - Field Guides
        - Museum Specimens
        - Taxonomic descriptions
- Minimum information required (ETS?): original data source /citation


### Specific cases of trait data
- Multivariate trait data
    - Spectroscopic data (VIS, NIRS, MIRS)
    - Chemical data
        - Metabolite data, link to MetaboLights https://www.ebi.ac.uk/metabolights/
         
### Trait imputation
- Methods for statistically imputing missing trait data
    - Comparison of methods: [Penone et al. 2014 Methods in Ecology and Evolution](https://besjournals.onlinelibrary.wiley.com/doi/10.1111/2041-210X.12232)
    - [Phylopars](https://cran.r-project.org/package=Rphylopars)
    - [BHPMF](https://rdrr.io/cran/BHPMF/man/BHPMF-package.html), https://onlinelibrary.wiley.com/doi/full/10.1111/geb.12335
    - Ancestral reconstruction R package [phytools](http://www.phytools.org/eqg2015/asr.html) or [Mesquite](https://www.mesquiteproject.org)
    - R package [traitor](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4755658/)


## Re-using existing trait-data
Data can be re-used or compiled to answer specific research questions, for larger synthesis projects, to expand the scope of studies, to extrapolate (e.g. to other taxa or regions) or to create databases. This process is not only about finding existing trait datasets but also about the search and correct use of vocabularies, taxonomies, term lists and ontologies that help answering a given research question or creating a database. 
Centralised database initiatives provide this service for a certain taxonomic (e.g. plants in TRY) or regional (e.g. Austraits) focus. 

If the research question requires a new data compilation, the first step is to identify suitable data sources. In general [Open access](https://creativecommons.org/about/program-areas/open-access/) and [FAIR](https://www.nature.com/articles/sdata201618) datasets, ontologies and services encourage re-use. A registry of open trait data is provided by the 
[OTN Registry](https://opentraits.org/datasets.html).
As datasets contain heterogeneous information in various formats, data compilation includes several steps of data harmonization, transformation, and quality assessment, which can be difficult and time-consuming. Those steps are discussed in the next chapter. 
In any case, in order to ensure reproducibility, to minimise errors, and to maximise transparency, it is important to keep the original values together with transformed data, to properly cite sources and to document all the steps of data manipulation, ideally with open code. The original datasets should be preserved, but archived independently as several copies ensure against data loss. 
Once collected, harmonised and documented, compiled data can be extremely valuable for the whole scientific community. Thus, ideally, new data compilations will be published in an open data repository and registered with OTN or other registries, with references to the original data sources, to inform that the data is used, ~~*and* that copies exist elsewhere~~ 


> [name=Caterina Penone] Not sure these ideas were correctly included:
Reuse vs compilation
The time saved in data collection will be spent on data cleaning and harmonization.
 
> [name=Florian Schneider] I think re-use rarely happens with just a single dataset (unless it is a compilation) and the text should highlight the high cost of making an own compilation (harmonization efforts, quality assessment, risk of puporting errors etc.). 
> What is not mentioned so far are the tools that exist to facilitate data re-use and compilation. 
 
### Trait data sources
- [OTN Registry](https://opentraits.org/datasets.html)
- Publication supplements
- Data papers
- Text mining


### Data-gathering tools
- [MADtraits](https://github.com/willpearse/MADtraits)
- [rBIEN](https://cran.r-project.org/web/packages/BIEN/index.html)
- [traitdataform](https://ecologicaltraitdata.github.io/traitdataform/)
- [Data Retriever](https://retriever.readthedocs.io/en/latest/)
- [rOpenSci `traits` package](https://docs.ropensci.org/traits/)
- [FENNEC](https://fennec.molecular.eco)
    
 
 
## Minimal data requirements and Metadata

### Essential data
This would be the minimal information for a trait record
  - taxon name
  - trait name
  - value
  - unit
  - source

### Meta data
- identify the meta data relevant for the research question
- covariates and meta-data
- minimum information
  - geolocation
  - time and date
  - life stage (e.g. juvenile)
  - health status
  - scale (e.g. leaf)
  - context (e.g. natural habitat)
  - measurement details (e.g. following standards, devices used...)

- further meta-data help (but nobody will measure meta-data not relecvant for the research question or relevant for re-use of the data...)
- provenance
  - DOI/URI
  - unstructured citation information
  - content-based unique identifier




# Post-Processing and data management  

After gathering the data from existing or new sources, they are usually transformed and aggregated into a comparable format suitable for answering a specific research question. Specific research questions produce narrow datasets as a result, whereas broad research questions produce more general datasets [*Caterina: not sure I agree here, the size of the dataset is independent of the specificity of the research question, it would be more the geographical and taxonomic scopes that would determine the "extent" of the dataset.*]. This data integration process of integrating gathered datasets can be automated, semi-automated or manual. When post-processed, data can also be aggregated at different levels (e.g. individuals, species) and this should be defined. Post-processing also includes several steps of error checking and quality control. As for data re-use, documentation and open code are extremely important for transpareny and reproducibility purposes.

### Post processing

- Harmonization (e.g. from multiple data sources)
  - semantic harmonization 
  - taxonomy
      - (Plant) Taxonomic Name Resolution Service (https://github.com/EnquistLab/RTNRS)
      - taxize R package https://cran.r-project.org/web/packages/taxize
      - LifeWatch Belgium e-Lab https://lifewatch.be/data-services
  - covariate hamonization
      - Geographic Name Resolution Service (https://github.com/EnquistLab/RGNRS)
- Error handling (e.g. wrong metadata)
- Duplicate handling
    - duplicate detection by evaluation of the trait value, biogeographic origin and time/date
- Outliers
    - z-score evaluation
- Transformation
    - logarithm
    - categories in p/a of category levels
- Standardization
    - by range
    - by standard deviation (or 2 standard deviations if to be combined with 0/1 data)
- Filtering
    - Non-native observations
    - Cultivated observations
- Combining trait values (repeated measures, by higher taxonomic group)
- Maintaining references to credit data providers (including primary and intermediate databases (there might be multiple layers))

### Data management

- consider the requirements for later publication
- trait-data handling best practice guidelines: https://ecologicaltraitdata.github.io/ETS/bestpractice.html
- data formats 
  - DwC MeasurementOrFacts (https://dwc.tdwg.org/terms/#measurementorfact)
  - ETS (https://terminologies.gfbio.org/terms/ets/pages/)
  - Traitdataform package: https://github.com/EcologicalTraitData/traitdataform
      - Translation Tables
  - Vocabularies
  - Reproducible code and documentation
      - BES guides https://www.britishecologicalsociety.org/wp-content/uploads/2017/12/guide-to-reproducible-code.pdf


### Controlled vocabularies
- Traits
  - https://www.marinespecies.org/traits/wiki/
  - http://polytraits.lifewatchgreece.eu/terms (collation of ontology terms)
  - https://opentraits.org/datasets.html (would be nice to scrape trait names from all these as a starting point for an OTN thesaurus?)
  - https://top-thesaurus.org/
  - http://www.marlin.ac.uk/biotic/ (not sure this one belongs here, it's not really a vocabulary, but more a traits database, so perhaps it should be part of the OTN Registry (see Trait Data Sources) )
- Taxonomy
  - https://www.marinespecies.org/
  - https://www.ncbi.nlm.nih.gov/taxonomy
  - http://www.theplantlist.org/
  - https://www.catalogueoflife.org/
  - https://www.ipni.org/
  - http://gni.globalnames.org/
  - https://www.gbif.org/dataset/d7dddbf4-2cf0-4f39-9b2a-bb099caae36c
  - https://www.itis.gov/
  - http://datazone.birdlife.org/species/taxonomy
  - https://lifewatch.be/en/taxonomic-information (aggregates several taxonomic registers)
- Relations
  - http://www.obofoundry.org/ontology/ro.html
- Geography
  - https://marineregions.org/
  - https://www.geonames.org/
  - https://www.wikidata.org/
- Ontologies
  - https://github.com/EcologicalSemantics/ecocore (this looks very specific to bacteria? plankton? possibly build on this, because brings together all relevant other onologies for this group)
  - http://www.obofoundry.org/
  - http://www.ontobee.org/
  - https://bioportal.bioontology.org/

# Downstream analysis of trait data 
>> I think the data analysis comes first after measurement, before everything else
[name= Alexander Keller] I rephrased this to downstram analysis to separate it a bit from the harmonization part. Is that better then?

As the downstream part of data analysis is directly linked to the [research question](#research-question), generalization of methods is hardly possible. In other words, given the diversity of research questions, also the analytical steps diverge largely. However several approaches have been shown to be viable in different research fields, and can prove helpful in shaping the data to the research question.

Ideal tools for downstream analyses allow, likewise to the previous sections, reproducibility by creating scripts that protocol each analysis step. Thus, tools commonly used include R, Python, Jupyter notebooks, etc. This code can be made public alongside data upon [publication](#Publishing-data-and-peer-review) to allow fellow researchers to reproduce the results obtained.

## Common packages for downstream analysis

- R packages
    - [ade4](https://cran.r-project.org/web/packages/ade4/ade4.pdf) Analysis of Ecological Data: Exploratory and Euclidean Methods in Environmental Sciences
    - [vegan](https://cran.r-project.org/web/packages/vegan/vegan.pdf) General community ecology package with some functions for traits, e.g. treedive
    - [FD](https://cran.r-project.org/web/packages/FD/FD.pdf) Measuring functional diversity from multiple traits, and other tools for functional ecology
    - [TPD](https://cran.r-project.org/web/packages/TPD/vignettes/TPD.html): Functional Diversity based on Trait Probability Density
    - [cati](http://onlinelibrary.wiley.com/doi/10.1111/ecog.01433): an R package using functional traits to detect and quantify multi‐level community assembly processes
    - [BMTME](https://www.g3journal.org/content/9/5/1355) An R Package for Bayesian Analysis of Multi-environment and Multi-trait Multi-environment Data for Genome-Based Prediction
    - [diversitree](https://cran.r-project.org/web/packages/diversitree/index.html) and particularly `trait.plot` function
    - [mvabund](https://besjournals.onlinelibrary.wiley.com/doi/10.1111/j.2041-210X.2012.00190.x)  an R package for model‐based analysis of multivariate abundance data
    - [adiv](https://besjournals.onlinelibrary.wiley.com/doi/10.1111/2041-210X.13430) An r package to analyse biodiversity in ecology including trait‐based (functional) diversity
    - [Picante](https://www.icesi.edu.co/CRAN/web/packages/picante/picante.pdf) Integrating Phylogenies and Ecology. Functions for phylocom integration, community analyses, null-models, traits and evolution. 
    - [phytools](http://www.phytools.org/eqg2015/asr.html) Phylogenetic reconstruction of ancestral trait state probabilities

- Python

## Derived traits

- Derived traits
    - **Ratios** between different traits are often very useful to identify functional properties better representative than the original traits. Examples are
        - Specific Leaf Area (SLA)
        - Leaf Mass per unit Area (LMA)
        - Protein : Lipid 
        - Wing length : body length
        - Thorax mass : body mass 
        - 
    - **Ordinations** can serve in cases where the effect of a magnitude of traits together can be important to predict a dependant variable. The variation of multi-variate trait space is reduced to few ordination coordinate axed which can be used for correlations as a proxy for agglomerated traits. 
- Functional clusters
    - Given [hierarchical ontologies](#Controlled-vocabularies), traits can be clustered to higher level groups to facilitate exploration and serve as an overview. Keep in mind that a single trait can appear several times in different clusters, if the ontology allows such. Examples are:
        - Functional  enrichment analyses: 
            - Genes [topGO](https://bioconductor.org/packages/release/bioc/html/topGO.html) given the defined [gene ontology](http://geneontology.org).
            - Metabolites [MetaboAnalyst](https://www.metaboanalyst.ca)
- Trophic level

## Community ecology metrics and analyses
   - [Functional dispersion](https://esajournals.onlinelibrary.wiley.com/doi/full/10.1890/08-2244.1)
   - [Eco-phylogenetic structure](https://onlinelibrary.wiley.com/doi/full/10.1111/brv.12252)
   - [Fourth Corner/RQL Analyses](https://esajournals.onlinelibrary.wiley.com/doi/10.1890/08-0349.1)
   - 
## Macro-evolutionary analysis
- [Phylogenetic niche conservatism](https://onlinelibrary.wiley.com/doi/full/10.1111/j.1420-9101.2010.02144.x)
- [Pagels lambda](http://www.nature.com/articles/44766)
- [Blomberg's K](http://dx.doi.org/10.1111/j.0014-3820.2003.tb00285.x)
- Phylogenetically regressed ANOVA: [aov.phylo](https://cran.r-project.org/web/packages/geiger/index.html) or [phylANOVA](https://cran.r-project.org/web/packages/phytools/index.html)
- Reviews on phylogentic comparative analysis 
    - [Freckleton et al. 2002 American Naturalist: Phylogenetic Analysis and Comparative Data: A Test and Review of Evidence](https://www.journals.uchicago.edu/doi/full/10.1086/343873)    
    - [Uyeda et al. 2018 Systematic Biology: Rethinking phylogenetic comparative methods](https://academic.oup.com/sysbio/article/67/6/1091/4985805)

## Mapping genome data to traits
-  GWAS (genome wide association study): Genomes of genetic variants in different individuals can be compared to see if any variant is associated with a trait. This can be helpful to identify genes associated with e.g. climatic adaptations or specific behaviours. [Korte & Farlow 2013 Plant Methods](https://plantmethods.biomedcentral.com/articles/10.1186/1746-4811-9-29) 

## Handling uncertainty/variation


# Publishing data and peer review

Trait data can be published alongside traditional journal articles. It is common to add data as supplementary files or to upload them to dedicated data repositories and link to them. 
Beside being supplementary to full research articles it is also possible to publish data sets as 'data publications' in specialized journals like [*Scientific Data*](https://www.nature.com/sdata/publish).
This publication channel allows for external review focused on the data itself rather than any conclusions drawn from it. This targeted review can further improve the quality and re-usability of the dataset.
Also, increasingly, research papers/data are published via more informal channels like pre-print services like https://arxiv.org, data publication platform such as https://zenodo.org, https://figshare.com, or combination of the two, like [open science framework](https://osf.io). The nature of the research paper/data does not necessarily change depending on where it is published, but the perceived reputation and rigor of peer-review might be different.
There are currently no common standards on the extent of peer review on supplementary data.

A way to ensure that your dataset conforms to community standards is to submit the dataset to an established curated database for your trait type (e.g. TRY for plant traits).
No matter what channel is used to publish the data, in order to facilitate re-use a machine-readable non proprietary data format should be used (i.e. prefer plain csv over excel or pdf)
Furthermore, making data available under a suitable open license (e.g. [Creative Commons Licenses](https://creativecommons.org/)) is a prerequisite for re-use by others.

After publishing data, visibility can be increased by registering the dataset in a trait registry (e.g. [OTN](https://opentraits.org/datasets.html)).

In case the dataset is not a static it makes sense to have regular releases with unambiguous version numbers.
If it is open for submissions by others and covers a trait or taxonomic group that does not fit with any established database, developing a new one can be an option.
