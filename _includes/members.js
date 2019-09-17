var otnMembers = [
{% for member in site.members %}
  {% if member.lat and member.long %}
    {
      "type": "Feature",
      "properties": {
        "name": "{{ member.name }}",
        "popupContent": "\
          {% assign static_image_expected = member.id | prepend: '/images' | append: '.jpg' %}\
          {% assign static_image_found = null %}\
          {% for static_file in site.static_files %}\
            {% if static_file.path contains static_image_expected %}\
              {% assign static_image_found = static_file.path %}\
            {% endif %}\
          {% endfor %}\
          {% if member.image %}\
  	        <img src='{{ member.image }}' width='60px'>\
          {% elsif static_image_found %}\
  	        <img src='{{ static_image_found }}' width='60px'>\
          {% elsif member.github %}\
            <img src='https://github.com/{{ member.github }}.png?size=60'>\
          {% endif %}\
          <br><a href='{{ member.id }}'>{{ member.name }}</a>,\
          {{ member.affiliation }}\
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
