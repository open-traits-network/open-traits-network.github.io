---
layout: page
title: Know the limitations 
id: best-practices-know-the-limitations
unlist: true
---


# Know the limitations 
(based on Rule 7 of the article [doi:10.1111/2041-210X.14033](https://doi.org/10.1111/2041-210X.14033))

**Follow the latest developments for best practices in trait data analyses. As the downstream part of data analysis is directly linked to the research question, generalisation of analytical methods is rarely possible. Given the diversity of research questions, the analytical steps can thus broadly diverge. However, the following notions can help identifying some common mistakes made with trait data due to their nature. Beyond this, we recommend referring to closely domain-specific and topic-related literature that can provide appropriate solutions.**

## Mind the level: 
Traits encompass different levels: organ, individual, population, species, and community (Violle et al., 2007), and this structure determines the tools used for data analyses. For instance, trait-environment relationships investigated at the species or community level require different analysis types (e.g., comparative models vs. simple linear models, see below). It is important to choose the appropriate level early in the research program to fit the target scientific question and to be able to analyse the data correctly.

## Be careful with categorical traits: 
By having fewer possible values, categorical traits might influence the outcome of statistical analyses. In particular, categorical traits might have disproportionate effects when aggregated with continuous traits in a standard metric (e.g. functional diversity). For instance, when computing Gower distances of traits between species pairs, a categorial trait treated as a binary trait (0/1) for each possible categorial value will only result in distances of 0 or 1. In contrast, only the species pair with the highest/lowest trait values for a continuous trait will have a value of 1. When averaging Gower distances of these two traits, the categorical one will have more influence than the continuous one (example from Gelman, 2008).  The joint use of continuous and categorical traits thus needs particular scaling (Gelman, 2008). Generally, it is important to be aware of this issue and to account for it with existing proposed methods (see de Bello et al., 2021).

## Do not confuse trait signals for richness and abundance signals: 
Metrics aggregating traits at the community level (e.g. functional diversity or community-weighted means - CWM), are influenced by the richness, the abundance of species and the overall species composition of the community. Choosing metrics unrelated to abundance (e.g., unweighted means) or null models (Hawkins et al., 2017) is necessary to separate species abundance, composition or richness signals from trait information.

## Handle correlations with care: 
Traits are often correlated, causing issues with statistical analyses (e.g., collinearity in linear models when traits are explanatory variables). Often, these correlations are due to biological constraints (e.g., allometries), or “strategies” (Díaz et al., 2016). In some cases, it is possible to use multivariate analyses (e.g. principal component analysis) to reduce trait space dimensionality by use of axes in further analyses. Keeping the original traits is advised when possible, as the biological meaning can be lost when using multivariate principal component axes. On another level, since the start of trait analyses at the community level, numerous metrics have been proposed to characterise functional diversity analogous to species diversity. When choosing a metric for a specific analysis, it is essential to be aware that several of these functional diversity metrics are highly correlated and with species richness (de Bello et al., 2021).

## Consider correction for phylogenetic relatedness: 
When analysing data from multiple species in trait-trait correlations, or when using traits as responses, and depending on whether the focus of the question is ecological or evolutionary, it may become necessary to account for the fact that species are not independent units (Pillar et al., 2021). The whole field of comparative analyses tackles this issue. It proposes tools to account for phylogenetic relatedness in trait analyses (e.g., see Garamszegi, 2014), though care should be taken to justify the use of such analytical corrections relative to the aims of the research question (Freckleton, 2000; Westoby et al., 1995).

## Account for variability and uncertainty: 
Very often, intra-specific data are aggregated at the species level to obtain one trait value per species. All information on variability and measurement uncertainty is then lost. When information on variability is available and reasonable in the scope of the study, it is possible to include it, e.g., by weighting species-level measures in functional diversity metrics (de Bello et al., 2021) or by explicitly including it when inferring trait evolution across lineages (Kostikova et al., 2016; Purschke et al., 2017). This can be an issue, especially if variability is phylogenetically structured (Garamszegi, 2014; Paterno et al., 2018).
