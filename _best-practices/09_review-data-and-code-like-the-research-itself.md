---
layout: page
title: Review data and code like the research itself
id: best-practices-review-data-and-code-like-the-research-itself
---


# Review data and code like the research itself
(based on Rule 9 of the article [doi:10.1111/2041-210X.14033](https://doi.org/10.1111/2041-210X.14033))

Best practices in peer review have already been discussed in detail (Roberts, 2004; Spigt & Arts, 2010), but can perhaps be summarised with this statement: “Be polite, fair, specific, and constructive”. A reviewer should provide information for the editorial team to decide; this process also applies to the data. Specifically for trait-based papers, it includes considering the entire life cycle of the trait data: 
1.	First, are the traits themselves appropriate for the question being asked? It should be considered how these traits have been used in the past and how they fit into biological theory. Are they being contextualised appropriately, and are they fit for the purpose for which they are being used?
2.	How were the data collected? Does the protocol conform to current standards, bearing in mind that the purpose of many papers is to improve standards and so they may not? Is the collection of new data well justified? Are units and metadata properly provided? 
3.	How were the data processed? Consider not just quality assurance and quality control but also how the traits were generally processed into a format that can be analysed. Ensure that relevant code (ranging from simple cleaning scripts to full-featured analysis pipelines and models) is openly available, functional, and conforms to community standards. Guidelines for source code review like those by the rOpenSci community (https://ropensci.org/software-review) or The Journal of Open Source Software (https://joss.readthedocs.io/en/latest/reviewer_guidelines.html) can be helpful.
4.	Ensure that a distinction is made between the ‘raw’ data collected and the ‘clean’ final product used for analysis, and that both forms of data are released. 
5.	Ensure that all data sources are appropriately cited and the provenance of data is explained. 

While these standards apply to all manuscripts, a distinction should be made between data papers and research papers. Standards for data release are the same for both types of publication. However, the expectations for demonstrating data cleaning and conceptual novelty likely differ between the two (but are, ultimately, determined by the journal’s guidelines). 
