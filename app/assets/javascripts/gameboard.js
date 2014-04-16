$(document).ready(function(){

  $('.box').on('click', function(){
  	var boxId = this.id;
  	var gameUrl = String(window.location.pathname);
  	console.log(gameUrl);

  	$.ajax({
  		type: "GET",
  		url: gameUrl,
  		data: {move: boxId},
  		success: function(){
  		  alert(boxId);
  		  $("#"+boxId).css("background-color", "lightblue");
  		}
  	});

  });


});