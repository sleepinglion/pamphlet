//= require application

$(document).ready(function() {
	$("#detail_show").click(function(){
		$(this).parent().parent().find('.none').show();
		$(this).remove();
	});
});