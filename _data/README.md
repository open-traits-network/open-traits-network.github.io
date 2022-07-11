
## Member to Publication Relations

To update publications.csv, please run update.sh .

For more information, see:

  https://github.com/open-traits-network/open-traits-network.github.io/issues/176  

  https://scholia.toolforge.org/organization/Q112326635


## Member to Taxa Relations

:warning: under construction. See https://github.com/open-traits-network/open-traits-network/issues/14 . 

The member-taxa.csv contains relationship between OTN members and the taxa that they are interested in. If the stated taxon names are ambiguous (e.g., homonyms like Anura, esoteric common names), then resolvedTaxonId and resolvedTaxonName columns should be populated. All member taxa relations which do *not* have a resolvedTaxonId and resolvedTaxonName are expected to be found using a Wikidata query for common names and/or taxon names.

To get a list of ambiguous or unknown names, please run update.sh to (re-) regenerate member-taxa-to-be-resolved.csv


