---
layout: page
id: events
---

|event|people|scholiaURL|roles|locations|
|---|---|---|---|---|
{%- for entry in site.data.events-to-people %}
  | [{{ entry.eventLabel }}]({{ entry.event }}) | [{{ entry.personLabel }}]({{ entry.person }}) | [{{ entry.eventUrl }}]({{ entry.eventUrl }}) | {{entry.roles | replace: "|", " &#124; " }} |  {{entry.locations | replace: "|", " &#124; " }} | 
{%- endfor %}
