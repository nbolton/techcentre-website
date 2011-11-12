function GetMap() {
    var mapOptions = {
        credentials: "Agjg6dgU5qqqSUhbTnjLS0CKcKAmPREX5iHW5HK6XzZPWxpmNSQdrLrYzI8dxSEC",
        center: new Microsoft.Maps.Location(54.156164, -4.490828),
        mapTypeId: Microsoft.Maps.MapTypeId.aerial,
        zoom: 17
    }

    var map = new Microsoft.Maps.Map(document.getElementById("mapDiv"), mapOptions);
    
    // add pushpin to center of map.
    var center = map.getCenter();
    var pin = new Microsoft.Maps.Pushpin(center, { icon: '/Images/Standard/Pushpin.png', width: 25, height: 39, draggable: false });
    map.entities.push(pin);
}
