$(function(){
  $(".button").animate({"opacity":"1"}, 1000);
  if ($("body").hasClass("all")) {
    $(".bar").transform("scale",".8");
    var len = $(".el").length ;
    if (len > 9){ 
    for (var i = 0 ; i < len ; i++){
      $(".bar").eq(i).transform("rotate", (360 / len) * i + 'deg' );
    }
  }else{ 
    for (var i = 0 ; i < len ; i++){
      $(".bar").eq(i).transform("rotate", (180 / len) * i + 'deg' );
    }
  }
  }
  
  $("span.a").click(function(){
    var len = $(".el").length ;
    for (var i = 0 ; i < len ; i++){
      $(".el").eq(i).animate({"left":"0px"}, 100, "easeOutCubic",function(){$(this).css("visibility","hidden")});
    }
    $("#but2").css("left","480px");
    $(".c,.d,.e,.f,.g,.h,.i").css("visibility","hidden");
    $(this).animate( 
        {"z-index":"1"}, { 
          dulation: 300, 
          step: function(now){
            $("#front").transform("rotateY", (now * 180) + 'deg');
            $("#back").transform("rotateY", 180 + (now * 180) + 'deg');
          },
          complete: function(){
            $(this).css("z-index","0");
            $(this).css("visibility","hidden");
            $(".b").css("visibility","visible");  
          }
        }
      );
    });
  $("span.b").click(function(){
    var len = $(".el").length ;
    for (var i = 0 ; i < len ; i++){
      $(".el").eq(i).animate({"left":"0px"}, 100, "easeOutCubic",function(){$(this).css("visibility","hidden")});
    }
    $("#but2").css("left","480px");
    $(".d,.e").css("visibility","hidden");
    $(".c,.f,.g,.h,.i").css("visibility","visible");
    $(this).animate( 
        {"z-index":"1"}, { 
          dulation: 300, 
          step: function(now){
            $("#front").transform("rotateY", 180 + (now * 180) + 'deg');
            $("#back").transform("rotateY", (now * 180) + 'deg');
          },
          complete: function(){
            $(this).css("z-index","0");
            $(this).css("visibility","hidden");
            $(".a").css("visibility","visible");
          }
        }
      );
    });
    
  $("span.c").click(function(){
    $(".el").css("visibility","visible");
    var len = $(".el").length ;
    for (var i = 0 ; i < len ; i++){
      $(".el").eq(i).addClass("yoko");
      $(".el").eq(i).animate({"left": (i + 1) * 50 + "px"}, 800, "easeOutExpo");
    }
    $("#but2").css("left", 480 + len * 50 + "px");
    $(".c").css("visibility","hidden")
    $(".d").css("visibility","visible")
  });
  
  $("span.d").click(function(){
    var len = $(".el").length ;
    for (var i = 0 ; i < len ; i++){
      $(".el").eq(i).removeClass("yoko");
      $(".el").eq(i).animate({"left": (i + 1) * 430 + "px"}, 400, "easeOutExpo");
    }
    $("#but2").css("left", 480 + len * 430 + "px");
    $(".d").css("visibility","hidden")
    $(".e").css("visibility","visible")
      });
  
    $("span.e").click(function(){
      var len = $(".el").length ;
      for (var i = 0 ; i < len ; i++){
        $(".el").eq(i).animate({"left":"0px"}, 100, "easeOutCubic",function(){$(this).css("visibility","hidden")});
      }
      $("#but2").css("left","480px");
      $(".e").css("visibility","hidden");
      $(".c").css("visibility","visible");
        });
        
  $("body.index .el").click(function(e){
    var aa = $(e.target).parents("div.el").attr("id");
    if (aa != "#"){
      $(".el").css("pointer-events","none");
      $(this).css({"z-index":"300"});
      $(this).transform({"rotate":"0deg","translate":"0px 0px"});
      $("#front").css("opacity","0");
      $("#back").css("opacity","0");
      var len = $(".el").length ;
      for (var i = 0 ; i < len ; i++){
        $(".el").eq(i).removeClass("yoko");
        $(".el").eq(i).animate({"left":"0px"}, 500, "easeOutCubic", setTimeout(function(){ window.location.href = aa; }, 800));
      }
      $("#but2").css({"left":"480px","opacity":"0"});
      $("#but1").css("opacity","0");
      var l = $(this).offset().left;
      var w = $(window).width() / 2
      var d = $(this).width()
      var s = l - ( w - d ) - d / 2
      $("html,body").animate({ scrollLeft: s }, 'fast');
    }
  });
  
  $(".g,.f,.h,.i").click(function(e){
    var h = $(this).children().html();
    window.location.href = h;
  });
  
  $(".k").click(function(){
    $("#enban").transition({
      rotate: '+=30deg'
    });
  });
  
}, (jQuery));