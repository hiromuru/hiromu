$ ->
  $(".front").css("opacity":"0").animate({"opacity":"1"}, 1200)
  
  $("#sk").css("opacity":"0").animate({"opacity":"1"}, 1200)
  $("#sf").css("opacity":"0").animate({"opacity":"1"}, 1200)
  
  $("span.down").click ->
    if $('body').hasClass('home')
      $("div#dummy").animate({
          "height" : "742px",
          "margin-bottom" : "20px" }, 900, ->
          window.location.href = "/skills/"
        )
      $(@).css(
          "border-top-color" : "transparent",
          "border-bottom-color" : "#FFF",
          "top" : "22px"
        )
      $(".right").remove()
    else if $('body').hasClass('index')
      $('#skills').animate({
          "top" : "-744px" }, 400, ->
            window.location.href = "/"
        )
      $(@).css(
          "border-bottom-color" : "transparent",
          "border-top-color" : "#FFF",
          "margin-top" : "27px"
        )
        
  $("body.index .icon").click ->
    $(".down").remove()
    $("#sk").css("visibility" : "hidden")
    $("#sf").css("visibility" : "hidden")
    name = $(@).next().html()
    $("#namehold").html(name)
    $("#iconhold").html($(@))
    lv = $(@).attr("alt")
    if lv == "5"
      lvv = "five" 
    else if lv == "4" 
      lvv = "four"
    else if lv == "3" 
      lvv = "three"
    else if lv == "2" 
      lvv = "two"
    else if lv == "1" 
      lvv = "one"
    console.log(lvv)
    $("#levelhold").addClass(lvv)
    $("#namehold").css("visibility":"visible")
    $("#iconhold").css("visibility":"visible")
    $("#levelhold").css("visibility":"visible")
    $("#namehold").animate({"opacity":"1"}, 800)
    $("#iconhold").animate({"opacity":"1"}, 800)
    aaa = $(@).attr("title")
    $("#levelhold").animate({"opacity":"1"}, 800, ->
      window.location.href = aaa
      )
    