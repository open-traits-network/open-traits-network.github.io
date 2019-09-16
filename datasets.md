---
layout: page
title: Datasets
---

{% for dataset in site.datasets %}
  - <a href="{{ dataset.id }}">{{ dataset.name }}</a> 
{% endfor %}

<a href="https://github.com/open-traits-network/open-traits-network.github.io/tree/master/_datasets">dataset registry source</a>
