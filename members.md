---
layout: page
title: Members
id: members
---

<link rel="stylesheet" type="text/css" href="css/leaflet.css">
<link rel="stylesheet" type="text/css" href="css/MarkerCluster.Default.css">

The Open Traits Network has members participating in [events](events), contributing to [publications](publications) and studying specific [taxa](taxa). 

Would you like to become a member? Watch [Aud Halbritter](http://opentraits.org/members/aud-h-halbritter)'s [how-to-join video](https://youtu.be/bgVd-OHdZH4) and introduce yourself [here](https://github.com/open-traits-network/open-traits-network.github.io/issues/new?assignees=open-traits-network%2Feditors&labels=new+member&template=register-member.md&title=I%27d+like+to+join+the+Open+Traits+Network). Don't have a github account? Send an  {% include register-member-email.html -%} instead.

{% include editorial_status.html %}

<div id="map-container" style="height:350px;width:550px;"></div>

<script type="text/javascript" src="js/leaflet.js"></script>
<script type="text/javascript" src="js/leaflet.markercluster.js"></script>
<script type="text/javascript">

{% include members.js %}

function onEachFeature(feature, layer) {
  if (feature.properties && feature.properties.popupContent) {
    layer.bindPopup(feature.properties.popupContent);
  }
}

var map = L.map('map-container').setView([0,0], 1);

L.tileLayer('https://{s}.tile.osm.org/{z}/{x}/{y}.png', {
  attribution: '&copy; <a href="https://osm.org/copyright">OpenStreetMap</a> contributors'
}).addTo(map);

var featureGroup = L.markerClusterGroup();
featureGroup.addLayer(
	L.geoJSON(otnMembers, {
      onEachFeature: onEachFeature
    }
  )
);

map.addLayer(featureGroup);
</script>

<br/>

[members.json](/members.json)

|name|affiliation|
|---|---|
{%- for member in site.members %}
|[{{ member.name }}]({{ member.id }}) | {{ member.affiliation | strip_newlines }} |
{%- endfor %}

[<a href="https://github.com/open-traits-network/open-traits-network.github.io/tree/master/_members">source profiles</a>]
