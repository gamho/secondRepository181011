(function($) {
 
  $(document).ready(function() {
 
    $("#myBtn").click(function() {
      $("#myModal").css({
        "display": "block"
      });
    });
 
    $(".close").click(function() {
      $("#myModal").css({
        "display": "none"
      });
    });
 
    $("html").click(function(event) {
      if (event.target.id === "myModal") {
        $("#myModal").css({
          "display": "none"
        });
      }
    });
    
    $("#myBtn2").click(function() {
        $("#myModal2").css({
          "display": "block"
        });
      });
   
      $(".close").click(function() {
        $("#myModal2").css({
          "display": "none"
        });
      });
   
      $("html").click(function(event) {
        if (event.target.id === "myModal2") {
          $("#myModal2").css({
            "display": "none"
          });
        }
      });
 
  });
 
})(jQuery); 