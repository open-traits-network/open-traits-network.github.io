---
layout: page
id: taxa
---

{% include editorial_status.html %}

For an (incomplete) view into publications by OTN [members](/members), see table below or visit [Scholia's OTN Publication page](https://scholia.toolforge.org/organization/Q112326635).

Your publication not listed? Please [open an issue](https://github.com/open-traits-network/open-traits-network.github.io/issues/open) and let us know who you are and which paper you'd like to be listed. 

|taxon|OTN Member|related publications|
|---|---|---|
{%- for entry in site.data.taxa-to-authors %}
  | {{ entry.taxonName }} | {{ entry.people }} | [{{ entry.scholiaURL }}]( {{ entry.scholiaURL }}) |
{%- endfor %}

Your taxon-member relation not listed? Please [open an issue](https://github.com/open-traits-network/open-traits-network.github.io/issues/open) and let us know who you are and which paper you'd like to be listed. 
