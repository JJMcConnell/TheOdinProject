$(document).ready(function() {

var container = $('.container');

var num = 1;
for (var i =0; i < 16; i++) {
	for (var j=0; j < 16; j++) {

	container.append( $('<div id="div' + num + ' "></div>').addClass('box'));
	num++;
	}
}


var width = 550 / 16;
var height = 550 / 16;
var boxClass = $('.box')

boxClass.css({"width": "" + width + "px",
			  "height": "" + height + "px"});

/* 
$('#div1').mouseenter(function() {

	$('this').removeClass('box').addClass('blackBox');

	console.log("mouseenter fired");

});

boxClass.mouseleave(function() {

	$('this').css({"background": "black"});

});
*/

});