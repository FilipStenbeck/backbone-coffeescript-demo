window.bbCoffee =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    'use strict'

    wobbler = new bbCoffee.Views.AnimateView (el: '.wobbler', css : 'wobble', myName : 'Wobbler')
    wobbler.render()

    shaker = new bbCoffee.Views.AnimateView (el: '.shaker', css: 'shake', myName : 'Shaker')
    shaker.render()
    
    pulser = new bbCoffee.Views.AnimateView (el: '.pulser', css: 'pulse', myName : 'Pulser')
    pulser.render()
    
    flipper = new bbCoffee.Views.AnimateView (el: '.flipper', css: 'flip', myName : 'Flipper')
    flipper.render()
    true
    
$ ->
  'use strict'
  bbCoffee.init();
