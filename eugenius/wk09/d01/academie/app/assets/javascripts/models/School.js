var School = Backbone.Model.extend({
	urlRoot: '/schools',

	default: {
		name: "General Assemb.ly",
		description: "Become a Web Developer!"
	} 
});