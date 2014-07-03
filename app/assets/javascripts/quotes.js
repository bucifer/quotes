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

$(document).ready(function () { 
  var authorsOBJ = JSON.parse(authorsArray);
  // constructs the suggestion engine
  var authorsBloodhound = new Bloodhound({
  datumTokenizer: Bloodhound.tokenizers.obj.whitespace('value'),
  queryTokenizer: Bloodhound.tokenizers.whitespace,
  // `states` is an array of state names defined in "The Basics"
  local: $.map(authorsOBJ, function(x) { return { value: x }; })
});
 
 // kicks off the loading/processing of `local` and `prefetch`
  authorsBloodhound.initialize();
  console.log(authorsBloodhound);
  
  $('#authorInput').typeahead({
    hint: false,
    highlight: true,
    minLength: 1
  },
  {
    name: 'authorsBloodhound',
    displayKey: 'value',
    source: authorsBloodhound.ttAdapter()
  });
});



$(document).ready(function () { 
  var categoriesOBJ = JSON.parse(categoryArray);
  // constructs the suggestion engine
  var categoryBloodhound = new Bloodhound({
  datumTokenizer: Bloodhound.tokenizers.obj.whitespace('value'),
  queryTokenizer: Bloodhound.tokenizers.whitespace,
  // `states` is an array of state names defined in "The Basics"
  local: $.map(categoriesOBJ, function(x) { return { value: x }; })
});
  categoryBloodhound.initialize();
  console.log(categoryBloodhound);

  $('#categoryInput').typeahead({
    hint: false,
    highlight: true,
    minLength: 1
  },
  {
    name: 'categoryBloodhound',
    displayKey: 'value',
    source: categoryBloodhound.ttAdapter()
  });
});