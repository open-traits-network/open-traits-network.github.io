---
layout: page
id: traits
---

|trait|people|scholiaURL|
|---|---|---|
{%- for entry in site.data.traits-to-authors %}
  | [{{ entry.traitLabel }}]({{ entry.trait }}) | {{ entry.people | replace: "|", " &#124; " }} | [{{ entry.scholiaURL }}]({{ entry.scholiaURL }}) |
{%- endfor %}
