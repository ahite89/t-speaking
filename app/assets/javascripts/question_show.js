var questionId = $('#question-id').html();
var ajaxUrl = '/questions/' + questionId + '/symbols';

$('#quarter').click(function() {
    var newSymbol = "&#9833";
    $('.symbols').append('<div class="quarters">' + newSymbol +'</div>');
    $('.quarters').draggable({
        start: function(event, ui) {
        	var startPos = $(this).position();
        	$("div#start").text("START: \nLeft: "+ startPos.left + "\nTop: " + startPos.top);
        },
        stop: function(event, ui) {
        	var stopPos = $(this).position();
          $.ajax({
              data: stopPos,
              method: 'POST',
              url: ajaxUrl
          });
          debugger;
        	$("div#stop").text("STOP: \nLeft: "+ stopPos.left + "\nTop: " + stopPos.top);
        }
      });
    $('.quarters').dblclick(function() {
        $(this).fadeOut(10);
    });
});

$('#quarter').hover(
  function(){
      $(this).addClass('border');
  },
  function(){
      $(this).removeClass('border')
});

$('#eighth').click(function() {
    var newSymbol = "&#9834";
    $('.symbols').append('<div class="eighths">' + newSymbol +'</div>');
    $('.eighths').draggable();
    $('.eighths').dblclick(function() {
        $(this).fadeOut(10);
    });
});

$('#eighth').hover(
  function(){
      $(this).addClass('border');
  },
  function(){
      $(this).removeClass('border')
});

$('#sharp2').click(function() {
    var newSymbol = "&#9839";
    $('.symbols').append('<div class="sharps">' + newSymbol +'</div>');
    $('.sharps').draggable();
    $('.sharps').dblclick(function() {
        $(this).fadeOut(10);
    });
});

$('#sharp2').hover(
  function(){
      $(this).addClass('border');
  },
  function(){
      $(this).removeClass('border')
});

$('#flat2').click(function() {
    var newSymbol = "&#9837";
    $('.symbols').append('<div class="flats">' + newSymbol +'</div>');
    $('.flats').draggable();
    $('.flats').dblclick(function() {
        $(this).fadeOut(10);
    });
});

$('#flat2').hover(
  function(){
      $(this).addClass('border');
  },
  function(){
      $(this).removeClass('border')
});

$('#natural').click(function() {
    var newSymbol = "&#9838";
    $('.symbols').append('<div class="naturals">' + newSymbol +'</div>');
    $('.naturals').draggable();
    $('.naturals').dblclick(function() {
        $(this).fadeOut(10);
    });
});

$('#natural').hover(
  function(){
      $(this).addClass('border');
  },
  function(){
      $(this).removeClass('border')
});

$('#g-clef').click(function() {
    var newSymbol = "&#119070";
    $('.symbols').append('<div class="g-clefs">' + newSymbol +'</div>');
    $('.g-clefs').draggable();
    $('.g-clefs').dblclick(function() {
        $(this).fadeOut(10);
    });
});

$('#g-clef').hover(
  function(){
      $(this).addClass('border');
  },
  function(){
      $(this).removeClass('border')
});

$('#bass-clef').click(function() {
    var newSymbol = "&#119074";
    $('.symbols').append('<div class="bass-clefs">' + newSymbol +'</div>');
    $('.bass-clefs').draggable();
    $('.bass-clefs').dblclick(function() {
        $(this).fadeOut(10);
    });
});

$('#bass-clef').hover(
  function(){
      $(this).addClass('border');
  },
  function(){
      $(this).removeClass('border')
});
