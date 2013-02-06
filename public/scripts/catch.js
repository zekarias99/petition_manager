//catch all jquery components for killer 1 
	$(document).ready(function() { 
		
		// Auto select navigation using jquery.  Boooyaaaaaa! 
			// vars
			var path = location.href.substring(location.href.lastIndexOf('/')+1);
			var folderpath = location.pathname.substring(0);
			
			
			if (path) 
			$('#nav a[@href$="' + path + '"]').addClass('active');
		
			//need to use exact path's for folders.  Sorry.  
			if (folderpath)
			$('#nav a[@href$="' + folderpath + '"]').addClass('active');

		
		//select the first h1 and make it pretty like a title. 

			$('#content h1:first').addClass('title');
			
		//clear search text field automatically
		
		// clear the search field on focus... it's a function yo.  

			$('.clearme').one("focus", function() {
			  $(this).val("");
				}); 
	
	//fix some styles if using ie 6.... LAME! 
	if (jQuery.browser.msie) {
		if(parseInt(jQuery.browser.version) == 6) {
		  $("h1 + h2, h2 + h3, h3 + h4, h4 + h5, h5 + h6, h1 + p, h2 + p, h3 + p, h4 + p, h5 + p, h6 + p").addClass("AfterH");
		  $("p + ul, h1 + ul, h2 + ul, h3 + ul, h4 + ul, h5 + ul, h6 + ul, p + ol, h1 + ol, h2 + ol, h3 + ol, h4 + ol, h5 + ol, h6 + ol").addClass("afterPH");
		  $("#content li:first-child").addClass("firstchild");
		}
	} 

	// Are zebras black with white stripes or white with black stripes?  
	$('tr:even').addClass('other');
	
	//little love for the quotes
	$('.quote').wrap('<div class="extraq"></div>');

	
}); 
