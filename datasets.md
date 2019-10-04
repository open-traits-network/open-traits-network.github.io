---
layout: page
title: Datasets
id: datasets
---

Add datasets to the OpenTraits initiative [here](https://docs.google.com/forms/d/e/1FAIpQLSdWL1hMzSGOfSSOGDFhjwipT1a1j9XSLpiDoI0ziTEMywsW7w/viewform?usp=sf_link).

{% include editorial_status.html %}

|name|contact|description|traits|taxa|
|---|---|---|---|---|
{%- for dataset in site.datasets %}
| [{{ dataset.name }}]({{ dataset.id }})| {{ dataset.contactName | replace: "|","/" }} | {{ dataset.description }} | {{ dataset.traitList | replace: "|","/" }} | {{ dataset.taxaList | replace: "|","/"}} |  
{%- endfor %}

[<a href="https://github.com/open-traits-network/open-traits-network.github.io/tree/master/_datasets">dataset profiles</a>]
