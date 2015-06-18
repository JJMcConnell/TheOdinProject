$(document).ready(function() {

var container = $('.container');
var newSketchButton = $('#newSketch');
var colorSketchButton = $('#colorSketch');
var opacitySketchButton = $('#opacitySketch');
var clearButton = $('#clear');
var sizeOfGrid


clearButton.on('click', function() {
	$('.blackBox').removeClass('blackBox').addClass('box');
	$('.colorBox').removeClass('colorBox').addClass('box').css("background-color", "white");
	$('.opacityBox').removeClass('opacityBox').addClass('box').css("background-color", "black").css("opacity", "0");
});

var num = 1;
for (var i =0; i < 16; i++) {
	for (var j=0; j < 16; j++) {

	container.append( $('<div id="div' + num + '"></div>').addClass('box'));
	num++;
	}
}

var width = 960 / 16;
var height = 960 / 16;
var boxClass = $('.box')

boxClass.css({"width": "" + width + "px",
			  "height": "" + height + "px"});


boxClass.mouseleave(function() {

	var hov = $(this).attr('id');
	console.log(hov);
	$('#' + hov).removeClass('box').addClass('blackBox');
	
});


newSketchButton.on('click', function() {

	sizeOfGrid = prompt("Please enter the number of squares (Ex. 64 for a 64x64 grid");
	container.empty();

	var val = 1;
	for (var i =0; i < sizeOfGrid; i++) {
		for (var j=0; j < sizeOfGrid; j++) {

		container.append( $('<div id="div' + val + '"></div>').addClass('box'));
		val++;
		}
	}

	var width = 960 / sizeOfGrid;
	var height = 960 / sizeOfGrid;


	$('.box').css({"width": "" + width + "px",
				  "height": "" + height + "px"});


	$('.box').mouseleave(function() {

		var hov = $(this).attr('id');
		console.log(hov);
		$('#' + hov).removeClass('box').addClass('blackBox');
	});
});

colorSketchButton.on('click', function() {

	sizeOfGrid = prompt("Please enter the number of squares (Ex. 64 for a 64x64 grid");
	container.empty();

	var val = 1;
	for (var i =0; i < sizeOfGrid; i++) {
		for (var j=0; j < sizeOfGrid; j++) {

		container.append( $('<div id="div' + val + '"></div>').addClass('box'));
		val++;
		}
	}

	var width = 960 / sizeOfGrid;
	var height = 960 / sizeOfGrid;


	$('.box').css({"width": "" + width + "px",
				  "height": "" + height + "px"});


	$('.box').mouseleave(function() {

		var hov = $(this).attr('id');
		var color = '#'+Math.floor(Math.random()*16777215).toString(16);
		console.log(hov);
	
		$('#' + hov).removeClass('box').addClass('colorBox').css("background-color", "" + color);
	});
});



opacitySketchButton.on('click', function() {

	sizeOfGrid = prompt("Please enter the number of squares (Ex. 64 for a 64x64 grid");
	container.empty();

	var val = 1;
	for (var i =0; i < sizeOfGrid; i++) {
		for (var j=0; j < sizeOfGrid; j++) {

		container.append( $('<div id="div' + val + '"></div>').addClass('box'));
		val++;
		}
	}

	var width = 960 / sizeOfGrid;
	var height = 960 / sizeOfGrid;


	$('.box').css({"width": "" + width + "px",
				  "height": "" + height + "px"});

	

	$('.box').mouseleave(function() {

		var hov = $(this).attr('id');
		var newOpac;
		console.log(hov);

		
		$('#' + hov).removeClass('box').addClass('opacityBox');

		var currentOpac = parseFloat($('#' + hov).css("opacity"));
		
		newOpac = (currentOpac + .1);
	
		$('#' + hov).css("opacity", "" + newOpac);

	});
});


});
