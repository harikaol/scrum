// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.ui.all
//= require jquery.ui.datepicker
//= require jquery_ujs
//= require bootstrap
//= require underscore
//= require gmaps/google

//= require_tree .
$(document).ready(function(){
    $('.date-picker').datepicker();
    var handler = Gmaps.build('Google');
    handler.buildMap({ internal: {id: 'geolocation'} }, function(){
        if(navigator.geolocation)
            navigator.geolocation.getCurrentPosition(displayOnMap);
    });
    function displayOnMap(position){
        var marker = handler.addMarker({
            lat: position.coords.latitude,
            lng: position.coords.longitude
        });
        handler.map.centerOn(marker);
    };
});

        
        // handler = Gmaps.build('Google');
        // handler.buildMap({ internal: {id: 'basic_map'}
        //                  });
        // handler = Gmaps.build('Google');
        // handler.buildMap({ internal: {id: 'one_marker'}}, function(){
        //     markers = handler.addMarkers([
        //         {
        //             lat: 0,
        //             lng: 0,
        //             picture: {
        //                 url: "https://addons.cdn.mozilla.net/img/uploads/addon_icons/13/13028-64.png",
        //                 width:  36,
        //                 height: 36
        //             },
        //             infowindow: "hello!"}]);});
        // var handler = Gmaps.build('Google');
        // handler.buildMap({ internal: {id: 'multi_markers'}}, function(){
        //     var markers = handler.addMarkers([
        //         { lat: 43, lng: 3.5},
        //         { lat: 45, lng: 4},
        //         { lat: 47, lng: 3.5},
        //         { lat: 49, lng: 4},
        //         { lat: 51, lng: 3.5}
        //     ]);
        //     handler.bounds.extendWith(markers);
        //     handler.fitMapToBounds();
        // });
        
            
       
        

// $(document).ready(function(){
//     handler = Gmaps.build('Google');
//     handler.buildMap({ internal: {id: 'basic_map' }});
