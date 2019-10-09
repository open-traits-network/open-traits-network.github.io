---
layout: page
title: Editors
id: editors
---

{% include editorial_status.html %}

{% assign editors = site.members | where: "role", "editor" %}

|name|affiliation|
|---|---|
{%- for member in editors %}
|[{{ member.name }}]({{ member.id }}) | {{ member.affiliation | strip_newlines }} |
{%- endfor %}
