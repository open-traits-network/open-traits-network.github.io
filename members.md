---
layout: default
---

This is a placeholder page for listing the members.

{% for member in site.members %}
<a href="{{ member.id }}">{{ member.name }}</a> 
{% endfor %}

<a href="https://github.com/open-traits-network/open-traits-network.github.io/tree/master/_members">source profiles</a>
