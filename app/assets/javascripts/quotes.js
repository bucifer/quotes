var pushArrowNav;
pushArrowNav = function() {
 $("body").keydown(function(e) {
      if(e.which == 37) { // left     
          $(".previous").trigger("click");
      }
      else if(e.which == 39) { // right     
          $(".next").trigger("click");
      }
    });
    $(".previous").on("click",function(){
        // your scripts for previous click here
        window.location = previousID;  
    });
    $(".next").on("click",function(){
        // your scripts for next click here
        window.location = nextID;   
    });
  };

$(document).ready(pushArrowNav);
