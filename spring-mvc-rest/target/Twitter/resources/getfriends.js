$( document ).ready(function() {
	
	var url = window.location;
	
	
	$.ajax({
		type : "GET",
		url : "http://localhost:8080/twitter/getFriends",
		dataType: 'json',
		success : function(result) {
					
			for(var i =0; i<result.length;i++){
				console.log(result[i].username);
				var user =  result[i].username;
				$('#usersFriends').append('<span>' +user+'</span><br></br>');
				
			}
	        
			
			console.log(result);
			},

		error : function(e) {
			alert("Error!")
			console.log("ERROR: ", e);
		}
	});
});