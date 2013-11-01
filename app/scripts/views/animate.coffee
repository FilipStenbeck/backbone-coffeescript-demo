'use strict';

class bbCoffee.Views.AnimateView extends Backbone.View
    
    initialize:  ( options ) ->
        @css = options.css
        @myName = options.myName
        @template = JST['app/scripts/templates/animate.ejs'](name : @myName)

    render : -> 
        $(@el).append(_.template(@template))
    
    animate : ->
        @className =  @css + ' animated'
        $(@el).addClass( @className )
        setTimeout ( =>
            $(@el).removeClass(@className)
        ), 1000 

    events :  
        'click ' : 'animate'    
