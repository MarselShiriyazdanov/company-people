$ ->
  $(".fav").on 'click', (event) ->
    company_id = event.target.dataset.id
    if event.target.className == 'fav glyphicon glyphicon-heart-empty'
      new_class = 'fav glyphicon glyphicon-heart'
    else
      new_class = 'fav glyphicon glyphicon-heart-empty'

    $.ajax(method: 'PATCH', url: "companies/#{company_id}")
      .done(->
        event.target.className = new_class
      )
