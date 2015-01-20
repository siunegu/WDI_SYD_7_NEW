var Status = Backbone.Model.extend({
	urlRoot: '/statuses',

	default: {
		username: "Anon",
		content: "Hello World!"
	}
});