'use strict';

class bbCoffee.Views.AboutView extends Backbone.View
    
    initialize:  ( options ) ->
        @template = JST['app/scripts/templates/about.ejs']()

    render : ->
    	$(@el).append _.template @template
    	$('#aboutModal').modal(backdrop: false)
    	this

    close : =>
    	$('#aboutModal').modal('hide')
    	Backbone.history.navigate("", {trigger: true, replace: true})

    events :
    	'click .close' : 'close'