$(document).ready(function () { 
  var categoriesOBJ = JSON.parse(categoryArray);
  // constructs the suggestion engine
  var categoryBloodhound = new Bloodhound({
  datumTokenizer: Bloodhound.tokenizers.obj.whitespace('value'),
  queryTokenizer: Bloodhound.tokenizers.whitespace,
  // `states` is an array of state names defined in "The Basics"
  local: $.map(categoriesOBJ, function(x) { return { value: x }; })
});
 
 // kicks off the loading/processing of `local` and `prefetch`
  categoryBloodhound.initialize();
  console.log(categoryBloodhound);

  $('#category-form .typeahead').typeahead({
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

