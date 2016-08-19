var map;
var requestsList;

function initMap() {
  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: 51.397, lng: -0.644},
    zoom: 8
  });
  
  requestsList = [];
  
  loadRequests();
  
  map.addListener('bounds_changed', function() {
    $('#search-results').empty();
    
    for(i = 0; i < requestsList.length; i++) {
      var request = requestsList[i];
      
      if(map.getBounds().contains(request.marker.getPosition())) {
        $('#search-results').append(
          "<a href=\"/profiles/" + request.request.profile_id + "\">" +
            "<h3>" + request.request.profile_id + "</h3>" + 
          "</a>"
        );
      }
    }
  });
}

loadRequests = function() {
  $.ajax({
    type: 'GET',
    url: "/requests/search",
    contentType: "application/json",
    dataType: "json",
    success: function(requests) {
      for(var i = 0; i < requests.requests.length; i++) {
        addMarker(requests.requests[i]);
      }
    }
  })
}

addMarker = function(request) {
  var marker = new google.maps.Marker({
    position: { lat: request.latitude, lng: request.longitude },
    map: map
  });
  
  requestsList.push({marker: marker, request: request});
}