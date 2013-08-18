class @Community.Views.PostsShow extends Support.CompositeView
  render: ->
    @collection.each (post) =>
      view = new Community.Views.PostShow(model: post)
      @appendChild view

      @
