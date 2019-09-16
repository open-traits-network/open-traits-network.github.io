---
layout: page
title: Datasets
---

Add datasets to the OpenTraits initiative [here](https://docs.google.com/forms/d/e/1FAIpQLSdWL1hMzSGOfSSOGDFhjwipT1a1j9XSLpiDoI0ziTEMywsW7w/viewform?usp=sf_link).

{% for dataset in site.datasets %}
  - <a href="{{ dataset.id }}">{{ dataset.name }}</a> 
{% endfor %}

<a href="https://github.com/open-traits-network/open-traits-network.github.io/tree/master/_datasets">dataset registry source</a>
