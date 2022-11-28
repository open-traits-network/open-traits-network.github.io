---
layout: page
title: Structure trait data
id: best-practices-structure-trait-data
unlist: true
---

# Structure trait data
(based on Rule 5 of the article [doi:10.1111/2041-210X.14033](https://doi.org/10.1111/2041-210X.14033))

**Do not underestimate the importance of the structure of your dataset. It might sound trivial at first glance to think about how to structure the data, but poorly structured data may become a nightmare to work with in downstream analyses, or to reformat for publication, deposit in a public database, or synthesise in meta-analyses. It thus makes sense to consider structural aspects even in the early stages of a project using traits.**

## Minimum trait data standards: 
The minimal, essential information for a trait record includes taxon name, trait name, observation ID, trait value, unit (if applicable), and source. Several standards are available to help structure this minimal information set (Fegraus et al., 2005; Kattge et al., 2011; Madin et al., 2007; Parr et al., 2015; Schneider et al., 2019; Wieczorek et al., 2012). A good start for data structuring is to adopt one of these well-established schemes.

## Preserve metadata and further observations recorded together: 
A complex aspect of structuring trait data is how to keep metadata and data links. This linkage is critical for various questions that address intra-specific variation, derived traits, or multivariate modelling on individuals. A good practice is to have unique identifiers for every entity that requires relations. Using such IDs allows linking to other traits and different data types, like community records of the plot in which the individual was found, DNA barcodes or information on the experiment that involved the individual. One approach is the Extensible Observation Ontology (OBOE, Madin et al., 2007), which various large databases have also adopted (e.g., TRY, Kattge et al., 2020).

## Apply version control: 
The process from gathering to analysing trait data is long, or trait data may change as measurement technologies improve (e.g., genomic traits, Madin et al. 2020), which may result in many different versions of a trait dataset. Thus, it is important to keep track of these different versions. It is recommended to keep the raw trait dataset and the processed trait dataset used for analysis as separate copies. Version names should be structured in a logical way, e.g., combining project acronyms, researchers’ initials, short names of the trait dataset, version numbers, file status, and/or dates. Use of versioning or change control systems like Git (Spinellis, 2012) is highly recommended to keep track of changes to data. Also, conventions that include a current (e.g., my_data_current.tsv) and versioned copy (e.g. my_data_1.0.tsv) help automated systems by providing a stable interface for indexing. 
