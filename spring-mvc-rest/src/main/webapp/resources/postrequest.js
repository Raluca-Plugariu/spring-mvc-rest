$( document ).ready(function() {
	
	var url = window.location;
	
	// SUBMIT FORM
    $("#postBtn").click(function()  {
		// Prevent the form from submitting via the browser.
	
    	var formData = {
    			"content": $("#content").val()
    			};
    	console.log(formData);
    	
    	$.ajax({
    		type: "POST",
    		async: true,
    		contentType: "application/json",
    		url: "http://localhost:8080/twitter/home",
    		data: JSON.stringify(formData),
    		dataType: 'json',
    		success: function(result){
    			location.reload();
    			console.log(result);
    			
    		},
    		failure: function(e){
    			alert("Error");
    			console.log("Error: ", e);
    		}    		
    	});
    	
   
    });
    
    $("#searchBtn").click(function()  {
		// Prevent the form from submitting via the browser.
		event.preventDefault();
    
		var user = document

        .getElementById('username').value;


        window.location

            .replace("http://localhost:8080/twitter/search/" + user);
    	
   
    });
    
});
    
    