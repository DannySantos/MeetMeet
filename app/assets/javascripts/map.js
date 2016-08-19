var map;
var requestsList;

function initMap() {
  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: searchMapLat, lng: searchMapLng},
    zoom: 8
  });
  
  requestsList = [];
  
  loadRequests();
  
  map.addListener('idle', function() {
    update();
  });
    
  update = function() {
    requestsList.forEach(function(request) {
      request.marker.setMap(null);
    });
    
    requestsList = [];
    
    var northEastLat = map.getBounds().getNorthEast().lat();
    var northEastLng = map.getBounds().getNorthEast().lng();
    var mapCenterLat = map.getCenter().lat();
    var mapCenterLng = map.getCenter().lng();
    
    $.ajax({
      type: 'GET',
      url: "/requests/search?search%5BnorthEastLat%5D=" + northEastLat +  
      "&search%5BnorthEastLng%5D=" + northEastLng + 
      "&search%5BmapCenterLat%5D=" + mapCenterLat + 
      "&search%5BmapCenterLng%5D=" + mapCenterLng +
      "&search%5Bactivity_id%5D=" + searchActivityId,
      accepts: {
        text: "application/json"
      },
      dataType: "json",
      success: function(requests) {
        for(var i = 0; i < requests.length; i++) {
          addMarker(requests[i]);
        }
        
        appendResults();
      }
    })
  };
  
}

loadRequests = function() {
  $.ajax({
    type: 'GET',
    url: "/requests/search?search%5Bactivity_id%5D=" + searchActivityId + 
    "&search%5Btown_city%5D=" + searchTownCity + 
    "&search%5Bcountry%5D=" + searchCountry,
    accepts: {
      text: "application/json"
    },
    dataType: "json",
    success: function(requests) {
      for(var i = 0; i < requests.length; i++) {
        addMarker(requests[i]);
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
  $('#resultsTotal').html(requestsList.length)
}

appendResults = function() {
  $('#search-results').empty();
  
  requestsList.forEach(function(request) {
    $('#search-results').append(
      "<a href=\"/profiles/" + request.request.profile_id + "\">" +
        "<h3>" + request.request.id + "</h3>" + 
        "<h3>" + request.request.town_city + "</h3>" + 
        "<h3>" + request.request.country + "</h3>" + 
      "</a>" +
      "<br>"
    );
  })
};


