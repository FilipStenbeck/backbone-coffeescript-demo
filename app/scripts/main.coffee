window.bbCoffee =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  animations: []
  

  #initialize backbone
  init: ->
    'use strict'
    @create(new bbCoffee.Views.AnimateView (el: '.wobbler', css : 'wobble', msg : 'Wobbler'))
    @create(new bbCoffee.Views.AnimateView (el: '.shaker', css: 'shake', msg : 'Shaker'))
    @create(new bbCoffee.Views.AnimateView (el: '.pulser', css: 'pulse', msg : 'Pulser' ))
    @create(new bbCoffee.Views.AnimateView (el: '.flipper', css: 'flip', msg : 'Flipper' ))
    @create(new bbCoffee.Views.AnimateView (el: '.tada', css: 'tada', msg : 'Tada' ))
    @create(new bbCoffee.Views.AnimateView (el: '.swing', css: 'swing', msg : ' a swinger'))

  create : (view)->
    @animations.push(view.render())
    
  startRouters : ->
    appRouter = new bbCoffee.Routers.ApprouterRouter(pushState: true)
    Backbone.history.start()

    
$ ->
  'use strict'
  bbCoffee.init();
  bbCoffee.startRouters();

