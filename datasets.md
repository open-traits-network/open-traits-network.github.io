---
layout: page
title: Datasets
---


<link rel="stylesheet" type="text/css" href="css/leaflet.css">
<link rel="stylesheet" type="text/css" href="css/MarkerCluster.Default.css">

Add datasets to the OpenTraits initiative [here](https://docs.google.com/forms/d/e/1FAIpQLSdWL1hMzSGOfSSOGDFhjwipT1a1j9XSLpiDoI0ziTEMywsW7w/viewform?usp=sf_link).

<div id="map-container" style="height:250px;width:300px;"></div>

<script type="text/javascript" src="js/leaflet.js"></script>
<script type="text/javascript" src="js/leaflet.markercluster.js"></script>
<script type="text/javascript">

var otnDatasets = [
{% for dataset in site.datasets %}
  {% if dataset.decimalLatitude and dataset.decimalLongitude %}
    {
        "type": "Feature",
        "properties": {
            "name": "{{ dataset.name }}",
            "popupContent": "<a href='{{ dataset.id }}'>{{ dataset.name }}</a>"
        },
        "geometry": {
            "type": "Point",
            "coordinates": [{{ dataset.decimalLongitude }}, {{ dataset.decimalLatitude }}]
        }
    },
  {% endif %}
{% endfor %}
];

function onEachFeature(feature, layer) {
    if (feature.properties && feature.properties.popupContent) {
        layer.bindPopup(feature.properties.popupContent);
    }
}

var map = L.map('map-container').setView([0,0], 0);

L.tileLayer('https://{s}.tile.osm.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://osm.org/copyright">OpenStreetMap</a> contributors'
}).addTo(map);

var featureGroup = L.markerClusterGroup();
featureGroup.addLayer(
	L.geoJSON(otnDatasets, {
  	onEachFeature: onEachFeature
  }
  )
);

map.addLayer(featureGroup);
</script>

<br/>

{% for dataset in site.datasets %}
  - <a href="{{ dataset.id }}">{{ dataset.name }}</a> 
{% endfor %}

[<a href="https://github.com/open-traits-network/open-traits-network.github.io/tree/master/_datasets">dataset profiles</a>]
