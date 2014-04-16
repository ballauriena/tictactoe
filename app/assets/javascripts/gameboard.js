$(document).ready(function(){

  $('.box').on('click', function(){
  	var boxId = this.id;
  	var gameUrl = String(window.location.pathname);
  	console.log(gameUrl);
//ajax method should post to moves create to create a new move when you click on the board, then change the color of the box
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