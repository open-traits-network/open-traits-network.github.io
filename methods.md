---
layout: page
id: methods
---

{% include editorial_status.html %}

For an (incomplete) view into methods used by OTN [members](/members), see table below or visit [Scholia's OTN Publication page](https://scholia.toolforge.org/organization/Q112326635#uses).

Your methods are not listed? Please [open an issue](https://github.com/open-traits-network/open-traits-network.github.io/issues/open) and let us know which method(s) you'd like to be listed and which paper(s) you have used it in. 

|method|OTN Members|related publications|
|---|---|---|
{%- for entry in site.data.method-to-author %}
  | [{{ entry.methodLabel }}]({{ entry.method }}) | {{ entry.people }} | [{{ entry.scholiaURL }}]({{ entry.scholiaURL }}) |
{%- endfor %}
