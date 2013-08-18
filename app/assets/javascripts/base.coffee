@Community =
  Models: {}
  Views: {}
  Collections: {}
  Routers: {}
  init: ->
    Community.router = new Community.Routers.PostsRouter()
  bootstrap: (key) ->
    json = document.createElement('div')
    json.innerHTML = $('#bootstrap').text()
    $.parseJSON(json.innerHTML)[key]

$(document).ready ->
  Community.init()
