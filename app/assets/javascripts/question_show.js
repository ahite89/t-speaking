//var questionId = $('#question-id').html();
//var ajaxUrl = '/questions/' + questionId + '/symbols';

  // var quarter = ('<div class="quarters">' + '&#9833' +'</div>');
  // var eighth = ('<div class="eighths">' + '&#9834' + '</div>');
  // var sharp = ('<div class="sharps">' + '&#9839' + '</div>');
  // var flat = ('<div class="flats">' + '&#9837' + '</div>');
  // var natural = ('<div class="naturals">' + '&#9838' + '</div>');
  // var gClef = ('<div class="g-clefs">' + '&#119070' + '</div>');
  // var bassClef = ('<div class="bass-clefs">' + '&#119074' + '</div>');
  //var noteZIndex = 0

  //$('.symbols').click(function() {
    //id = ('#' + this.id);
    //noteClass = this.id + 's'
    //note = $(this).html();
      //$('#new-notes').append('<div class="' + noteClass + '" style="z-index: ' + (noteZIndex + 1) + '">' + note +'</div>');
      //$('.' + noteClass).draggable({
        //  start: function(event, ui) {
          //	var startPos = $(this).position();
          //	$("div#start").text("START: \nLeft: "+ startPos.left + "\nTop: " + startPos.top);
          //},
          //stop: function(event, ui) {
          	//var stopPos = $(this).position();
            //$.ajax({
                //data: stopPos,
                //method: 'POST',
                //url: ajaxUrl
            //});
          	//$("div#stop").text("STOP: \nLeft: "+ stopPos.left + "\nTop: " + stopPos.top);
            //noteZIndex = noteZIndex + 1;
          //}
        //});
      //$('.' + noteClass).dblclick(function() {
          //$(this).fadeOut(10);
      //});
  //});

// $('#eighth').click(function() {
//     var newSymbol = "&#9834";
//     $('#new-notes').append('<div class="eighths">' + newSymbol +'</div>');
//     $('.eighths').draggable();
//     $('.eighths').dblclick(function() {
//         $(this).fadeOut(10);
//     });
// });
//
// $('#eighth').hover(
//   function(){
//       $(this).addClass('border');
//   },
//   function(){
//       $(this).removeClass('border')
// });
//
// $('#sharp2').click(function() {
//     var newSymbol = "&#9839";
//     $('#new-notes').append('<div class="sharps">' + newSymbol +'</div>');
//     $('.sharps').draggable();
//     $('.sharps').dblclick(function() {
//         $(this).fadeOut(10);
//     });
// });
//
// $('#sharp2').hover(
//   function(){
//       $(this).addClass('border');
//   },
//   function(){
//       $(this).removeClass('border')
// });
//
// $('#flat2').click(function() {
//     var newSymbol = "&#9837";
//     $('#new-notes').append('<div class="flats">' + newSymbol +'</div>');
//     $('.flats').draggable();
//     $('.flats').dblclick(function() {
//         $(this).fadeOut(10);
//     });
// });
//
// $('#flat2').hover(
//   function(){
//       $(this).addClass('border');
//   },
//   function(){
//       $(this).removeClass('border')
// });
//
// $('#natural').click(function() {
//     var newSymbol = "&#9838";
//     $('#new-notes').append('<div class="naturals">' + newSymbol +'</div>');
//     $('.naturals').draggable();
//     $('.naturals').dblclick(function() {
//         $(this).fadeOut(10);
//     });
// });
//
// $('#natural').hover(
//   function(){
//       $(this).addClass('border');
//   },
//   function(){
//       $(this).removeClass('border')
// });
//
// $('#g-clef').click(function() {
//     var newSymbol = "&#119070";
//     $('#new-notes').append('<div class="g-clefs">' + newSymbol +'</div>');
//     $('.g-clefs').draggable();
//     $('.g-clefs').dblclick(function() {
//         $(this).fadeOut(10);
//     });
// });
//
// $('#g-clef').hover(
//   function(){
//       $(this).addClass('border');
//   },
//   function(){
//       $(this).removeClass('border')
// });
//
// $('#bass-clef').click(function() {
//     var newSymbol = "&#119074";
//     $('#new-notes').append('<div class="bass-clefs">' + newSymbol +'</div>');
//     $('.bass-clefs').draggable();
//     $('.bass-clefs').dblclick(function() {
//         $(this).fadeOut(10);
//     });
// });
//
// $('#bass-clef').hover(
//   function(){
//       $(this).addClass('border');
//   },
//   function(){
//       $(this).removeClass('border')
// });
$(document).ready(function() {
    $("#staff").droppable({
        accept: '.symbols',
        drop: function(event, ui) {
            $(this).append($(ui.helper).clone());
            $("#staff .symbols").addClass("item");
            $(".item").removeClass("ui-draggable symbols");
            $(".item").draggable({
            });
        }
    });
    $(".symbols").draggable({
        helper: 'clone'
    });

    $('.ui-draggable-handle.border.item.ui-draggable').dblclick(function() {
        $(this).fadeOut(10);
    });
});

    $('.symbols').hover(
      function(){
          $(this).addClass('border');
      },
      function(){
          $(this).removeClass('border')
    });
