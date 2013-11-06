'use strict';

class bbCoffee.Routers.ApprouterRouter extends Backbone.Router
	routes :
		"about" : "about"
		"showdetails" : "showAllDeatils",
		"hidedetails" : "hideAllDeatils"  

	

	showAllDeatils : ->
		_.each(bbCoffee.animations, (view) -> view.showDetails())

	hideAllDeatils : ->
		_.each(bbCoffee.animations, (view) -> view.render())

	about :  ->
		about = new bbCoffee.Views.AboutView (el: '#about')
		about.render()
		
