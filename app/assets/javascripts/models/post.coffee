class @Community.Models.Post extends Backbone.Model
  urlRoot: '/posts'

  title: ->
    @get('title')

  body: ->
    @get('body')

  domId: ->
    @get('dom_id')
