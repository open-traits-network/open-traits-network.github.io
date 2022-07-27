---
layout: page
id: taxa
---

{% include editorial_status.html %}

For an (incomplete) view into methods used by OTN [members](/members), see table below or visit [Scholia's OTN Publication page](https://scholia.toolforge.org/organization/Q112326635).

Your methods not listed? Please [open an issue](https://github.com/open-traits-network/open-traits-network.github.io/issues/open) and let us know who you are and which paper you'd like to be listed. 

|method|OTN Member|related publications|
|---|---|---|
{%- for entry in site.data.method-to-author %}
  | [{{ entry.methodLabel }}]({{ entry.method }}) | [{{ entry.personLabel }}]({{ entry.person }}) | [{{ entry.workLabel }}]({{ entry.work }}) |
{%- endfor %}

Your method-member relation not listed? Please [open an issue](https://github.com/open-traits-network/open-traits-network.github.io/issues/open) and let us know who you are and which paper you'd like to be listed. 
