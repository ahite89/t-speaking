$('#quarter').click(function() {
    var newSymbol = "&#9833";
    $('.symbols').append('<div class="quarters">' + newSymbol +'</div>');
    $.ajax({
              data: { symbol: '&#9833' },
              method: 'POST',
              url: '/questions/:id'  
          });
    $('.quarters').draggable();
    $('.quarters').dblclick(function() {
        $(this).fadeOut('fast');
    });
});

$('#eighth').click(function() {
    var newSymbol = "&#9834";
    $('.symbols').append('<div class="eighths">' + newSymbol +'</div>');
    $('.eighths').draggable();
    $('.eighths').dblclick(function() {
        $(this).fadeOut('fast');
    });
});

$('#sharp2').click(function() {
    var newSymbol = "&#9839";
    $('.symbols').append('<div class="sharps">' + newSymbol +'</div>');
    $('.sharps').draggable();
    $('.sharps').dblclick(function() {
        $(this).fadeOut('fast');
    });
});

$('#flat2').click(function() {
    var newSymbol = "&#9837";
    $('.symbols').append('<div class="flats">' + newSymbol +'</div>');
    $('.flats').draggable();
    $('.flats').dblclick(function() {
        $(this).fadeOut('fast');
    });
});

$('#natural').click(function() {
    var newSymbol = "&#9838";
    $('.symbols').append('<div class="naturals">' + newSymbol +'</div>');
    $('.naturals').draggable();
    $('.naturals').dblclick(function() {
        $(this).fadeOut('fast');
    });
});

$('#g-clef').click(function() {
    var newSymbol = "&#119070";
    $('.symbols').append('<div class="g-clefs">' + newSymbol +'</div>');
    $('.g-clefs').draggable();
    $('.g-clefs').dblclick(function() {
        $(this).fadeOut('fast');
    });
});

$('#bass-clef').click(function() {
    var newSymbol = "&#119074";
    $('.symbols').append('<div class="bass-clefs">' + newSymbol +'</div>');
    $('.bass-clefs').draggable();
    $('.bass-clefs').dblclick(function() {
        $(this).fadeOut('fast');
    });
});
