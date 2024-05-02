// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

$(document).on('click', '.next-screen', function(e) {
  e.preventDefault();
  var url = $(this).attr('href');
  $('#screen-container').load(url);
});
