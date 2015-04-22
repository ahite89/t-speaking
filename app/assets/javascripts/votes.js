$("#flat").click(function (event) {
  event.preventDefault();
  var href = this.href.split("/");
  var AnswerId = href[href.length - 2];
  var path = href.slice(Math.max(href.length - 3, 1));
  path = "/" + path.join("/");

  $.ajax({
    type: "POST",
    url: path,
    dataType: "json"
  })
  .done(function ( data ) {
    $("#upvote_count" + AnswerId).text(data);
  });
  return false;
});

$("#sharp").click(function (event) {
  event.preventDefault();
  var href = this.href.split("/");
  var AnswerId = href[href.length - 2];
  var path = href.slice(Math.max(href.length - 3, 1));
  path = "/" + path.join("/");

  $.ajax({
    type: "POST",
    url: path,
    dataType: "json"
  })
  .done(function ( data ) {
    $("#upvote_count" + AnswerId).text(data);
  });
  return false;
});
