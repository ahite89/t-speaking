$(document).ready(function() {
  $('#score').hover(function() {
    $('#popup').show();
  }, function() {
    $('#popup').hide();
  });
});


var canvas = $("canvas#staff")[0];
var renderer = new Vex.Flow.Renderer(canvas,
  Vex.Flow.Renderer.Backends.CANVAS);

var ctx = renderer.getContext();
var stave = new Vex.Flow.Stave(10, 0, 500);
stave.addClef("treble").setContext(ctx).draw();
