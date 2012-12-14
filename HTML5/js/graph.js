
$(document).delegate('#statistics_page', 'pageshow', function( ) {
    graph()
});

(function( $ ) {
    getData = function() {
        var jsonData = getEntryList();
    };

    graph = function() {

        var entries = {
            "entries": [
                {
                    "heart": 66,
                    "mood": {
                        "category": null,
                        "moodvalue": [
                            10,
                            70,
                            40,
                            90,
                            20
                        ],
                        "eventid": null
                    },
                    "weather": {
                        "temp": 20
                    },
                    "sleep": {
                        "hours": 5,
                        "eff": 50
                    },
                    "date": 1355479721209
                },
                {
                    "heart": 66,
                    "mood": {
                        "category": null,
                        "moodvalue": [
                            20,
                            40,
                            50,
                            80,
                            100
                        ],
                        "eventid": null
                    },
                    "weather": {
                        "temp": 20
                    },
                    "sleep": {
                        "hours": 5,
                        "eff": 50
                    },
                    "date": 1355479721210
                },

                {
                    "heart": 66,
                    "mood": {
                        "category": null,
                        "moodvalue": [
                            90,
                            10,
                            30,
                            60,
                            40
                        ],
                        "eventid": null
                    },
                    "weather": {
                        "temp": 20
                    },
                    "sleep": {
                        "hours": 5,
                        "eff": 50
                    },
                    "date": 1355479721211
                }
            ]
        };

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
    };
})( jQuery );


