window.bbCoffee =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  
  #initialize backbone
  init: ->
    'use strict'

    wobbler = new bbCoffee.Views.AnimateView (el: '.wobbler', css : 'wobble', msg : 'Wobbler')
    wobbler.render()

    shaker = new bbCoffee.Views.AnimateView (el: '.shaker', css: 'shake', msg : 'Shaker')
    shaker.render()
    
    pulser = new bbCoffee.Views.AnimateView (el: '.pulser', css: 'pulse', msg : 'Pulser' )
    pulser.render()
    
    flipper = new bbCoffee.Views.AnimateView (el: '.flipper', css: 'flip', msg : 'Flipper' )
    flipper.render()
    true

    tada = new bbCoffee.Views.AnimateView (el: '.tada', css: 'tada', msg : ' the tada guy' )
    tada.render()

    tada = new bbCoffee.Views.AnimateView (el: '.swing', css: 'swing', msg : ' ... a swinger')
    tada.render()
 
  #Do some Jquery stuff
  fixHeader: ->
    'use strict'
    @header = $('.page-header')
    $(@header).click( (event) =>
      $(@header).addClass('bounceOutUp animated')
      setTimeout ( =>
             $(@header).slideUp()
        ), 600 
    )


$ ->
  'use strict'
  bbCoffee.fixHeader();
  bbCoffee.init();


