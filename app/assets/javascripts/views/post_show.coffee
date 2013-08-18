class @Community.Views.PostShow extends Backbone.View
  className: 'post'

  events: ->
    'mouseenter': 'enableHover'
    'mouseleave': 'disableHover'

  render: ->
    @$el.template 'posts/show'
    @$el.find('.title').text(@model.title())
    @$el.find('.body').text(@model.body())
    @

  enableHover: =>
    @$el.addClass('active')

  disableHover: =>
    @$el.removeClass('active')
