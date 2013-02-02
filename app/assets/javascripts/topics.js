jQuery(document).ready(function($) {
	if ($('body.topics.loggin').length == 0) {
		$('.edit').remove();
	}else{
		$('.btns').filter('[data-user=' + user.id + ']').show();
		$('.edit').not('[data-user=' + user.id + ']').remove();
	}
	
	$(document).on('click', '.edit_reply_link', function(event) {
	  var reply = $(this).closest('.reply');
		reply.find('.reply_contaienr').hide(400, function() {
			reply.find('.edit').show();
		});
		return false;
	});
	
	$(document).on('click', '.cancel_edit_reply', function(event) {
	  var form = $(this).closest('.edit');
		form.hide(400, function() {
			form.prev('.reply_contaienr').show();
		});	
		return false;
	});
});
