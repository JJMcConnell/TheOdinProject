$(document).ready(function() {

var container = $('.container');

var num = 1;
for (var i =0; i < 16; i++) {
	for (var j=0; j < 16; j++) {

	container.append( $('<div id="div' + num + ' "></div>').addClass('box'));
	num++;
	}
}

/*
var width = 700 / num;
var height = 500 / num;

$('.box').css({"width": "" + width + "px",
			  "height": "" + height + "px"});

*/


});