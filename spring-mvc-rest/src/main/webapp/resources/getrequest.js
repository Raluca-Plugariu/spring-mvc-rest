$( document ).ready(function() {
	
	var url = window.location;
	
	
	$.ajax({
		type : "GET",
		url : "http://localhost:8080/twitter/getUsers",
		dataType: 'json',
		success : function(result) {
					
			for(var i =0; i<result.length;i++){
				console.log(result[i].username);
				var user =  result[i].username;
				$('#usersResult').append('<span>' +user+'</span>');
				$('#usersResult').append('<form><button formaction="http://localhost:8080/twitter/friends/'+user+'">Follow</button></form><br></br>'  );
				
			}
	        
			
			console.log(result);
			},

		error : function(e) {
			alert("Error!")
			console.log("ERROR: ", e);
		}
	});
});