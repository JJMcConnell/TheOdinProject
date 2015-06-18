$(document).ready(function() {

var container = $('.container');
var newSketchButton = $('#newSketch');
var colorSketchButton = $('#colorSketch');
var opacitySketchButton = $('#opacitySketch');
var clearButton = $('#clear');
var sizeOfGrid

//Code for the clear button to reset all the drawings. Changes it back to the original class and proper colors
clearButton.on('click', function() {
	$('.blackBox').removeClass('blackBox').addClass('box');
	$('.colorBox').removeClass('colorBox').addClass('box').css("background-color", "white");
	$('.opacityBox').removeClass('opacityBox').addClass('box').css("background-color", "black").css("opacity", "0");
});

//This loops through to create the original 16x16 grid of divs
var num = 1;
for (var i =0; i < 16; i++) {
	for (var j=0; j < 16; j++) {
	//Gives each div a unique ID used later
	container.append( $('<div id="div' + num + '"></div>').addClass('box'));
	num++;
	}
}

//Sets the size of the sqaures as a proportion of the total div. 1/16th here but based on the number entered later

var width = 960 / 16;
var height = 960 / 16;
var boxClass = $('.box')

boxClass.css({"width": "" + width + "px",
			  "height": "" + height + "px"});

//Changes the color to black when the mouse leaves the div by switching it to a different css class
boxClass.mouseleave(function() {

	var hov = $(this).attr('id');
	console.log(hov);
	$('#' + hov).removeClass('box').addClass('blackBox');
	
});

//When the new sketch button is clicked it asks for the size of the grid and then recreates it based on the size entered
//There is a lot of repeat code for these button functions which bothers me but I don't know enough to be able to properly refactor it
//Might revisit in the future to cut down on the code repeat

newSketchButton.on('click', function() {

	sizeOfGrid = prompt("Please enter the number of squares (Ex. 64 for a 64x64 grid");
	container.empty();

	//Uses entered number sizeOfGrid instead of the hardcoded 16 as used above
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


	//In this case it uses a random color rather than just black when mouse leaves the div
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

	
	//Had to do some nonsense to get the opacity to work. Takes the current opacity parsed as a float, adds 10% to it and makes that the new opacity
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
