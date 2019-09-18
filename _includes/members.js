var memberImageSrc = {};
var otnMembers = [];
var img_src = "";

{% for member in site.members %}
          {% assign static_image_expected = member.id | prepend: '/images' | append: '.jpg' %}
          {% assign static_image_found = null %}
          {% for static_file in site.static_files %}
            {% if static_file.path contains static_image_expected %}
              {% assign static_image_found = static_file.path %}
            {% endif %}
          {% endfor %}
          {% if member.image %}
            img_src = "{{ member.image }}",
          {% elsif static_image_found %}
            img_src = "{{ static_image_found }}",
          {% elsif member.github %}
            img_src = "https://github.com/{{ member.github }}.png?size=200",
          {% else %}
            img_src = "",
          {% endif %}
    memberImageSrc["{{member.id}}"] = img_src;
  {% if member.lat and member.long %}
    otnMembers.push({
      "type": "Feature",
      "properties": {
        "name": "{{ member.name }}",
        "popupContent": "\
	  <img src='"+img_src+"' width='60px'>\
          <br><a href='{{ member.id }}'>{{ member.name }}</a>,\
          {{ member.affiliation }}\
         "
      },
      "geometry": {
        "type": "Point",
        "coordinates": [{{ member.long }}, {{ member.lat }}]
      }
    });
  {% endif %}
{% endfor %}

