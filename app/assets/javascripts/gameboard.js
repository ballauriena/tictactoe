$(document).ready(function(){

  $('.box').on('click', function(){
  	var boxId = this.id;
  	var gameNum = String(window.location.pathname).replace(/\/.+\//, "");

  	$.ajax({
  		type: "POST",
  		url: "/games/:game_id/moves",
  		data: {number: gameNum, move: boxId},
  		success: function(d){
  		  $("#"+boxId).css("background-color", "lightblue");
  		}
  	});

  });


});