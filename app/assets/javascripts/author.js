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

  $('#search-form .typeahead').typeahead({
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

