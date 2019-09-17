var otnMembers = [
{% for member in site.members %}
  {% if member.lat and member.long %}
    {
        "type": "Feature",
        "properties": {
            "name": "{{ member.name }}",
            "popupContent": "\
              {% if member.image %}\
	    	<img src='{{ member.image }}'>\
              {% elsif member.github %}\
                <img src='https://github.com/{{ member.github }}.png?size=128'>\
              {% endif %}\
		<a href='{{ member.id }}'>{{ member.name }}</a>,\
		{{ member.affiliation }}\
		<br><br><em>{{ member.info }}</em>\
		"
        },
        "geometry": {
            "type": "Point",
            "coordinates": [{{ member.long }}, {{ member.lat }}]
        }
    },
  {% endif %}
{% endfor %}
];
