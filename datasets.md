---
layout: page
title: Datasets
id: datasets
---

Add datasets to the Open Traits registry [here](https://github.com/open-traits-network/open-traits-network.github.io/issues/new?assignees=open-traits-network%2Feditors&labels=dataset+review&template=register-dataset.md&title=Please+add+%5Bname%5D+to+the+OTN+dataset+registry). To learn more, please watch [Aud Halbritter](http://opentraits.org/members/aud-h-halbritter)'s [how-to-add-a-trait-dataset video](https://youtu.be/PtvIf3OnXRc). Don't have a github account? Send an {% include register-dataset-email.html -%} instead.

{% include editorial_status.html %}

[datasets.json](/datasets.json)

<a href="projects/data_overview"> Explore the data as of 2022-08-10 with our Data Explorer </a>

|name|contact|description|traits|taxa|traitDetails|taxaDetails
|---|---|---|---|---|---|
{%- for dataset in site.datasets %}
| [{{ dataset.name }}]({{ dataset.id }})| {{ dataset.contactName | replace: "|","/" }} | {{ dataset.description }} | {{ dataset.traitList | replace: "|","/" }} | {{ dataset.taxaList | replace: "|","/"}} | under construction | under construction 
{%- endfor %}

[<a href="https://github.com/open-traits-network/open-traits-network.github.io/tree/master/_datasets">dataset profiles</a>]
