var otnMembers = [
{% for member in site.members %}
  {% if member.lat and member.long %}
    {
        "type": "Feature",
        "properties": {
            "name": "{{ member.name }}",
            "popupContent": "\
              {% assign static_image_expected = member.id | prepend: '/images' | append: '.jpg' %}
              {% for static_file in site.static_files %}
                 {% if static_file.path contains static_image_expected %}
                    {% assign static_image_found = static_file.path %}
                 {% endif %}
              {% endfor %}
              {% if member.image %}\
	    	<img src='{{ member.image }}'>\
              {% elsif static_image_found %}\
	    	<img src='{{ static_image_found }}'>\
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
