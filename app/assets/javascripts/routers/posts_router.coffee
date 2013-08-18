class @Community.Routers.PostsRouter extends Backbone.Router
  routes:
    ''  : 'indexPosts'

  initialize: ->
    postsData = Community.bootstrap('posts')
    @postsCollection = new Community.Collections.Posts(postsData)
    Backbone.history.start(root: '/posts', pushState: true)

  indexPosts: =>
    posts = new Community.Views.PostsShow({ collection: @postsCollection, el: $('.posts') })
    posts.render()
