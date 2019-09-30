---
layout: page
title: Members
id: members
---

<link rel="stylesheet" type="text/css" href="css/leaflet.css">
<link rel="stylesheet" type="text/css" href="css/MarkerCluster.Default.css">

Add yourself to the OpenTraits initiative [here](https://github.com/open-traits-network/open-traits-network.github.io/blob/master/_members#creating-a-member-file).

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

{% for member in site.members %}
  - [{{ member.name }}]({{ member.id }})
{% endfor %}

[<a href="https://github.com/open-traits-network/open-traits-network.github.io/tree/master/_members">source profiles</a>]
