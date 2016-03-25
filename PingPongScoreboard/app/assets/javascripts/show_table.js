$( document ).ready(function() {
  $("table").hide();
  var tableToggle = $(".btn-block"); 
  tableToggle.on("click", function() {
    if (tableToggle.hasClass("clicked")) {
     hideTable();
  } else {
    showTable();
   }  
  })
  function showTable() {
    tableToggle.addClass("clicked");
    $("table").show();
    tableToggle.text("Hide High Scores");
  }
  function hideTable() {
    $("table").hide();
    tableToggle.removeClass("clicked");
    tableToggle.text("Show High Scores");
  }
});