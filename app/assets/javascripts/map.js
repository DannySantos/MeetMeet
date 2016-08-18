// Map constructor
function Map() {
  this.map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: 51.5073509, lng: -0.1277583},
    zoom: 8
  });
  
  this.requests = [];
  
  this.loadRequests();
}

function initMap() {
  map = new Map();
}

Map.prototype.loadRequests() {
  
}