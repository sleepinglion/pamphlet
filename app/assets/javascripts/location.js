//= require application


$(document).ready(function() {
	initialize();


      function initialize() {
var mh = new google.maps.LatLng(37.251810, 127.077390); 
var myLatlng = new google.maps.LatLng(37.253505, 127.071575);      	
      	
        var mapOptions = {
          center:myLatlng,
          zoom: 16,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var map = new google.maps.Map(document.getElementById("map_canvas"),
            mapOptions);

var contentString = '<div>모델하우스</div>';
var contentString2 = '<div>현장</div>';
var infowindow = new google.maps.InfoWindow({
    content: contentString
});
        
var infowindow2 = new google.maps.InfoWindow({
    content: contentString2
});
var marker = new google.maps.Marker({
    position: myLatlng,
    title:"모델하우스"
});

var marker2 = new google.maps.Marker({
    position: mh,
    title:"현장"
});

marker.setMap(map);
marker2.setMap(map);

  infowindow.open(map,marker);
  infowindow2.open(map,marker2);    
      }
      
     
      
});


