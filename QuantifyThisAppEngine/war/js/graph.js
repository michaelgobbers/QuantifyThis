


(function( $ ) {
    $(document).delegate('#statistics_page', 'pageshow', function( ) {
        getData();
    });

    var getData = function(){
        $.get("http://quantifythisapp.appspot.com/DataService", { request: "getMood", format: "json"}, function(resp){
            graph(resp)
        }, "json");
    };

    var graph = function(entries) {
        if(entries == null){
            return
        }

        var mood1 = [];
        var mood2 = [];
        var mood3 = [];
        var mood4 = [];
        var mood5 = [];

        for (var i = 0; i<entries.entries.length; i++){
            var entry = entries.entries[i];
            var date = entry.date * 1000;

            item = [date, entry.mood.moodvalue[0]];
            mood1.push(item);
            item = [date, entry.mood.moodvalue[1]];
            mood2.push(item);
            item = [date, entry.mood.moodvalue[2]];
            mood3.push(item);
            item = [date, entry.mood.moodvalue[3]];
            mood4.push(item);
            item = [date, entry.mood.moodvalue[4]];
            mood5.push(item);
        }

        mood1 = computeList(mood1);
        mood2 = computeList(mood2);
        mood3 = computeList(mood3);
        mood4 = computeList(mood4);
        mood5 = computeList(mood5);

        var myData = [{label: "Energized", data:mood1},
            {label: "Focused", data: mood2},
            {label: "Happy", data: mood3},
            {label: "Loving", data: mood4},
            {label: "Calm", data: mood5}];
        var Options = {
            xaxis: { mode:"time", timeformat:"%d/%m"},
            yaxis: {min:0, max:100}
        };

        $.plot($("#graph"), myData, Options);
        $.plot($("#mood1_graph"), [{ data:mood1 }], Options);
        $.plot($("#mood2_graph"), [{ data:mood2 }], Options);
        $.plot($("#mood3_graph"), [{ data:mood3 }], Options);
        $.plot($("#mood4_graph"), [{ data:mood4 }], Options);
        $.plot($("#mood5_graph"), [{ data:mood5 }], Options);
    };

    var computeList = function(list){
        var handledList = [];
        var averagedList = [];
        for(var i = 0; i < list.length; i++){
            var entry = list[i];
            var date = entry[0];
            var handled = false;
            for(date1 in handled){
                if(date1 == date){
                    handled = true;
                    break;
                }
            }
            if(handled)continue;
            handledList.push(date)
            averagedList.push([date, getAverage(date, list)]);
        }

        return averagedList;
    };

    var getAverage = function(date, entries){
        var count = 0;
        var sum = 0;
        for(var i = 0; i < entries.length; i++){
            var entry = entries[i];
            var date1 = entry[0];
            if(date != date1)continue;
            sum += entry[1];
            count++;
        }
        return sum/count;
    };

    getData();
})( jQuery );


