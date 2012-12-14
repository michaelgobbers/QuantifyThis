
$(document).delegate('#statistics_page', 'pageshow', function( ) {
    graph()
});

(function( $ ) {
    graph = function() {
        var myData = [[1, 2010], [2, 2543], [3, 2520], [4, 2354]];
        getData();
        var Options = {
            xaxis: { },
            yaxis: {min:0, max:100}
        }

        $.plot($("#graph"), [
            {
                data: myData,
                lines: { show: true },
                color: "#454d7d"
            }
        ],Options);
    };

    getData = function() {
        var jsonData = getEntryList();

    };
})( jQuery );


