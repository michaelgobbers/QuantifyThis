function getLocation()
{
    if (navigator.geolocation)
    {
        navigator.geolocation.getCurrentPosition(showPosition);
    }
    else{
        x.innerHTML="Geolocation is not supported by this browser.";
    }
}
function showPosition(position)
{
    var APPID = 'dj0yJmk9OTFZSWlwM29rWVRFJmQ9WVdrOWVYQnNVMUZoTjJrbWNHbzlOakV4TnpNMk9UWXkmcz1jb25zdW1lcnNlY3JldCZ4PTky';		// our Yahoo APP id
    var DEG = 'c';
    var lat = position.coords.latitude;
    var lon = position.coords.longitude;
    var geoAPI = 'http://where.yahooapis.com/geocode?location='+lat+','+lon+'&flags=J&gflags=R&appid='+APPID;

    var wsql = 'select * from weather.forecast where woeid=WID and u="'+DEG+'"',
        weatherYQL = 'http://query.yahooapis.com/v1/public/yql?q='+encodeURIComponent(wsql)+'&format=json&callback=?',code, city, results, woeid;

    $.getJSON(geoAPI, function(r){

        if(r.ResultSet.Found == 1){

            results = r.ResultSet.Results;
            city = results[0].city;
            code = results[0].statecode || results[0].countrycode;

            // This is the city identifier for the Yahoo weather API
            woeid = results[0].woeid;

            // Make a weather API request:
            $.getJSON(weatherYQL.replace('WID',woeid), function(r){
                if (!(r.query && r.query.count == 1)) {
                    showError("Error retrieving weather data!");
                    return null;
                }

                var item = r.query.results.channel.item.condition;
                var temp_element = $("#temperature");
                if (!item) {
                    temp_element.val(null);
                    return null;
                }
                temp_element.val(item.temp);
                return item.temp;
            });
        }
    }).error(function(){
            showError("Your browser does not support CORS requests!");
        });

}
