
$ ->
    $("span.right").click ->
      $("#container").animate
        width: "980px"
      , {dulation: 1500, queue: false}
      $("#info").animate
        left: "540"
        , {dulation: 1500, queue: false}
    $("span.down").click ->
      $("#exam").animate
        top: "-1394px"
      , {dulation: 1500, queue: false}
      $("#skil").animate
        top: "-650px"
        , {dulation: 1500, queue: false}
    