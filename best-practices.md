---
layout: page
title: Best Practices
id: best-practices
---

# A community driven resource for best practices
Based on the the article, but open for public additions from the scientific community:

**"Ten (mostly) simple rules to future-proof trait data in ecological and evolutionary sciences"**

in Methods in Ecology and Evolution. [doi:10.1111/2041-210X.14033]()


## Abstract
1. Traits have become a crucial part of ecological and evolutionary sciences, helping researchers understand the function of an organism's morphology, physiology, growth and life-history, with effects on fitness, behaviour, interactions with the environment, and ecosystem processes. However, compiling and analysing trait data comes with data-scientific challenges due to the complex nature of trait data. 
2. We offer 10 (mostly) simple rules, with some detailed extensions, as a guide in making critical decisions that consider the entire life cycle of trait data. 
3. This article is particularly motivated by its last rule, i.e. to propagate the good practices, and has the intention of bringing awareness of the different facets of a trait's life cycle to the community. 
4. When it comes to working with trait data, we gain particularly as an interdisciplinary community of field biologists, synthesis ecologists, computer scientists and database managers. We hope these basic guidelines can be useful as a starter for active communication in disseminating such integrative knowledge and how to make trait data future-proof.

## Table of contents (in progress)

1. Select the right trait
2. Consult existing data
3. Rely on measurement protocols and know your units
4. Context is crucial
5. Structure trait data
6. Check and process 
7. Know the limitations 
8. Publish trait data together with metadata 
9. Review data and code like the research itself
10. Propagate the good practices

Best practices and where they apply in the overall trait data life cycle. Each topic is primarily applied to a specific element or the whole span of the cycle (in bold) but can also be necessary to other elements (secondary application). 

![Trait life Cycle](https://github.com/open-traits-network/open-traits-network.github.io/blob/best-practices/_best-practices/Trait_data_fig_new2.png)

## Motivation
As early as 300 BC, Greek philosophers such as Theophrastus forged the first formal systems defining and classifying organisms by their combination of morphological, physiological, behavioural, and phenological characteristics, i.e., their traits (Weiher et al., 1999). Knowing an organism’s traits often allows deeper understanding of its life-history, behaviour, fitness, biotic interactions and potential responses to and effects on ecosystem processes (Violle et al., 2007). Traits can also allow a better understanding of the processes behind ecological and evolutionary patterns (Sutherland et al., 2013), and offer a bridge between different dimensions: from organismal biology, e.g. population abundance (Webb et al., 2010), species distribution (Sporbert et al., 2021), and phylogeny (Junker et al., 2015; Tucker et al., 2018) to ecosystem functioning (Lavorel & Garnier, 2002; Wright et al., 2016).

Traits are commonly defined as a measure of an entity (Garnier et al., 2017), where the entity can be the whole individual, or a specific organ or tissue (e.g., a fish, its tail fin or wood) and the quantity is an observable characteristic of that entity (e.g., the length or color of a fish, the length of its tail fin, or the density of wood tissue). Together, all traits of an individual organism represent its phenotype, which results from the historical evolution of the genotype and potential current interactions with the environment. Therefore, a trait record should inform not only about the entity that was observed (e.g. taxonomic classification or age) and the quantity/characteristic that was measured, but also about the environment in which the individual has developed that trait (Kattge et al., 2011, de Bello et al., 2021), e.g. where a fish was caught, where a tree lived or the soil depth where an invertebrate was observed. 

There are many ways to describe and measure the traits of organisms (Kearney et al., 2021; Walker et al., 2022). For example, a plant leaf can be described by several hundred measurable characteristics, or ‘traits’. These include surface area, sodium concentration, phenology, and maximum photosynthetic rate (see e.g. Kattge et al., 2020). On the one hand, different traits of an individual are often correlated, e.g., for a tree to grow tall it usually needs a thick stem. Recognising these correlations in how the data are collected (e.g., on the same tree) and stored is essential. In this case, for a trait record to be meaningful, it needs to be connected to a combination of multiple trait measurements. In contrast, a trait record can also be rather simple, if the given trait is well defined, if it depends ‘only’ on the genotype, or if it is not affected by current interaction with the environment.

In essence, trait data are a special kind of data: they are diverse (e.g. categorical or numeric, with a multitude of units), relatively simple (e.g. length) or potentially complex (e.g. behavioral traits), largely independent of one another (e.g. fish color) or correlated with other traits (e.g. brain and body mass), and range between cheap and costly to measure (e.g. simple color vs. metabolome data). However, they are very informative as they represent the evolutionary adaptation or developmental acclimation of the individual organisms to their environment and allow for quantitative and predictive ecology and biodiversity research. Therefore - if collected, stored and published in a meaningful way - organismal trait data have an extraordinary value for reuse, as indicated by e.g., the >20,000 data requests to the TRY Plant Trait Database since 2015 (Kattge et al., 2020).

To enable the reuse of trait data beyond their original research campaign, to make them meaningful in other contexts and to avoid data degradation, observation records must be clearly defined, where possible the environmental context given, as well as provenance and sampling and measuring protocols for collection documented (Michener, 2006). Recent efforts to expand trait knowledge across the Tree of Life (Gallagher et al., 2020) call for datasets that are open and FAIR (Findable, Accessible, Interoperable, Reusable) (Wilkinson et al., 2016), fundamental principles at the heart of the emergent Open Science movement (Nosek et al., 2015). Global and local datasets of organismal traits have rapidly grown since the 1990’s (e.g., Herberstein et al., 2022; Kattge et al., 2020; Madin et al., 2016, 2020). However, these datasets bear various new challenges linked to harmonisation, biases, expertise, and communication (Salguero-Gómez et al., 2021). These challenges result in a significant trade-off between investing in collecting new trait data or reusing open trait data (Westoby et al., 2021). Indeed, many studies in trait-based research reuse available trait data or collect additional trait data and/or assemble new data (e.g. examples in Kattge et al., 2020). Thus, these studies also often involve linking different types of data, which requires interoperability between datasets (Feng et al., 2022; Gallagher et al., 2020).

These key aspects are just a few of many dimensions illustrating how and why researchers have to make biological decisions, and a wide range of data-science choices when collecting and working with trait data. Multiple complexities of trait data structure and manipulation are not obvious at first glance (Michener, 2006). For instance, there is sometimes confusion, and lack of awareness of trait standards, measurement units, and trait data are particularly prone to errors in recording, language translation, and understanding (Dawson et al., 2021; Kunz et al., 2022). By offering a larger perspective, a “trait data life cycle” (i.e. a data life cycle specific for trait data, Rüegg et al., 2014) can help clarify these confusions and inform about good practices when working with trait data (Fig. 1). In this article, we highlight some common pitfalls in the usage of trait data and offer 10 rules for making critical decisions that consider the entire life cycle of trait data. We start each rule with a general and simple statement and develop the complexity of each rule within more detailed subsections.

## References 
* Weiher, E., van der Werf, A., Thompson, K., Roderick, M., Garnier, E., & Eriksson, O. (1999). Challenging Theophrastus: A common core list of plant traits for functional ecology. Journal of Vegetation Science, 10(5), 609–620. https://doi.org/10.2307/3237076
* tbc
