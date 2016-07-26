$(document).ready(function() {
	getSurfReport();
});
	
function getSurfReport() {
	$('#beach-info-form').on('submit', function(event){
		event.preventDefault();
		var formData = $('#beach').serialize()

	$.ajax({
	url: '/',
	method: 'POST',
	data: formData
	})		
	.done(function(serverData){
		console.log(serverData);
		console.log($('.append-area'));
	$('.append-area').append(serverData);		
	})
  
  });
}
