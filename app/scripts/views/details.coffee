'use strict';

class bbCoffee.Views.DetailsView extends Backbone.View
	
	initialize:  ( options ) ->
		@template = JST['app/scripts/templates/details.ejs']()

	render : -> 
        $(@el).html(_.template(@template))
        this

