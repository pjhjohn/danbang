(function($) {
  var map;
  var marker;
  var geocoder;

  var update_field = function(position) {
    $('#lat').val(position.lat());
    $('#lng').val(position.lng());
    console.log("latitude :", $('#lat').val(), "longitude :", $('#lng').val());
  };

  function geocodeAddress(address) {
    geocoder.geocode({'address': address}, function(results, status) {
      if (status === google.maps.GeocoderStatus.OK) {
        var location = results[0].geometry.location;

        $('#query_id_lnglat').val(results[0].formatted_address);

        console.log(results);

        map.setCenter(location);
        marker.setPosition(location);
        update_field(location);
      } else {
        alert('Geocode was not successful for the following reason: ' + status);
      }
    });

  }

  $(document).ready(function() {
    var map_dom_element = $("#map_canvas_id_lnglat")[0];
    var center = new google.maps.LatLng(37.497921, 127.027636);
    var options = {
      zoom: 15,
      center: center
    };

    map = new google.maps.Map(map_dom_element, options);
    geocoder = new google.maps.Geocoder();

    marker = new google.maps.Marker({
      map: map,
      position: center,
      draggable: true
    });

    update_field(center);

    google.maps.event.addListener(map, "click", function(e) {
      marker.setPosition(e.latLng);
      update_field(e.latLng);
    });

    google.maps.event.addListener(marker, 'drag_end', function(e) {
      // !!!
    });

    $("#query_submit_id_lnglat").click(function(e) {
      var q = $('#query_id_lnglat').val();
      geocodeAddress(q);
      return false;
    });
  });
})(jQuery);

var alerted = false;
$(document).ready(function(){
  var address = $('#id_address').val();
  $('#map_search').children('input').val(address);

  $('#map_search').children('input').click(function(){
    var address = $('#id_address').val();
    $(this).val(address);
    if(!alerted) {
      alert('검색 버튼을 꼭 눌러서 확인해주세요');
      alerted = true;
    }
  });

  $('input:checked').parent().css('background-color', '#aaa');

  function selectedRadioColor(radioInput){
    $(radioInput).on('change', function() {
      $(radioInput).parent().css('background-color', 'white');
      $(this).parent().css('background-color', '#aaa');
    });
  };
});