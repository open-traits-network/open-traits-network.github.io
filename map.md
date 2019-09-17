---
layout: page
---

<link rel="stylesheet" type="text/css" href="css/leaflet.css">
<link rel="stylesheet" type="text/css" href="css/MarkerCluster.Default.css">

Are you part of the OpenTraits Initiative? Then add yourself and show who we are: <https://github.com/open-traits-network/open-traits-network.github.io/blob/master/_members>

<div id="map-container" style="height:700px;"></div>

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
<br/>
Map made with [http://leafletjs.com](http://leafletjs.com), Clustering via [Leaflet.markercluster](https://github.com/Leaflet/Leaflet.markercluster). Inspired by [deRSE map](https://www.de-rse.org/en/map.html).
