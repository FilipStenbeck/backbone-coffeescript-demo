'use strict';

class bbCoffee.Views.AnimateView extends Backbone.View
    
    initialize:  ( options ) ->
        @css = options.css
        @msg = options.msg
        @template = JST['app/scripts/templates/animate.ejs'](name : @msg)

    render : -> 
        $(@el).html(_.template(@template))
        this
    
    animate : ->
        @className =  @css + ' animated'
        $(@el).addClass( @className )
        setTimeout ( =>
            $(@el).removeClass(@className)
        ), 1000

    getClassNameFromEl : ->
        classNames = $(@el).attr('class').split(/\s/)
        detailsEl =  '.' + classNames[0] +   ' .details'
        
    showDetails : ->
        if @details
            @details = null
            @render()
        else
            @render()
            @details = new bbCoffee.Views.DetailsView(el: @getClassNameFromEl())
            @details.render()

    events :  
        'mouseenter' : 'animate',
        'click' : 'showDetails'    
