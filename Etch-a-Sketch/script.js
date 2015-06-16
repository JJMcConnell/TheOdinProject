$(document).ready(function() {

var container = $('.container');

var num = 1;
for (var i =0; i < 20; i++) {
	for (var j=0; j < 20; j++) {

	container.append( $('<div id="div' + num + ' "></div>').addClass('box'));
	num++;
	}
}


var width = 550 / 22;
var height = 550 / 22;

$('.box').css({"width": "" + width + "px",
			  "height": "" + height + "px"});




});