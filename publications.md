---
layout: page
id: publications
---

{% include editorial_status.html %}

For an (incomplete) view into publications by OTN [members](/members), see table below or visit [Scholia's OTN Publication page](https://scholia.toolforge.org/organization/Q112326635).

Your publication not listed? Please [open an issue](https://github.com/open-traits-network/open-traits-network.github.io/issues/open) and let us know who you are and which paper you'd like to be listed. 

|Date|OTN (Co-)Authors|Title|
|---|---|---|
{%- for publication in site.data.publications %}
  | {{ publication.publicationDate }} | {{ publication.researchers }} | [{{ publication.workLabel }}]( {{ publication.work }}) |
{%- endfor %}

Your publication not listed? Please [open an issue](https://github.com/open-traits-network/open-traits-network.github.io/issues/open) and let us know who you are and which paper you'd like to be listed. 
