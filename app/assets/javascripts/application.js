// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require turbolinks
//= require_tree .


$(function(){
	$('.latestPosts').on('click', function(){
		$.get('https://graph.facebook.com/v2.11/adamscenter/feed?access_token=')
			.done((res) => {
				res.data.forEach(function(post){
					$.post('/posts', {
						post: {
							fb_created: post.created_time,
							fb_id: post.id,
							content: post.message
							}
						
					})
						.done((res) => {
							let length = $('.list').children.length;
							$('#list').append(`
								<li> ${length}. ${res.post.content}</li>
								<hr />
								`)
						})
				})
			})
	})
})
