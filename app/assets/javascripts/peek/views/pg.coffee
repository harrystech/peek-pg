(($) ->
    $ ->
        queries_to_display = []

        $(document).on 'peek:render', (e, req, results) ->
            queries_to_display = results.data.pg.queries

        $("#peek #peek-view-pg #queries").on 'click', (event) ->
            console.log("========== QUERIES: ==========")
            for query in queries_to_display
                do ->
                    console.info(query)
)(jQuery)