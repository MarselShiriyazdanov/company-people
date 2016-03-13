$ ->
  $(".fav").on 'click', (event) ->
    object = event.target.dataset.object
    id = event.target.dataset.id
    if event.target.className == 'fav glyphicon glyphicon-heart-empty'
      new_class = 'fav glyphicon glyphicon-heart'
    else
      new_class = 'fav glyphicon glyphicon-heart-empty'

    $.ajax(
      method: 'POST',
      url: "/favorites",
      data: { object: object, id: id }
    ).done( ->
      event.target.className = new_class
    )
