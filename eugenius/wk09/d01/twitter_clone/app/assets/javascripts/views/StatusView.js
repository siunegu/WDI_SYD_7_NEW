var StatusView = Backbone.View.extend({
	tagName: 'div',
	classname: 'status',
	template: JST['statuses/status'],

	events: {
		"click button": "toggleFav" // "event name, css selector": "doThis"
	},

	initialize: function() {
		this.model.on("change", this.render, this);
		this.model.on("destroy", this.remove, this);
	},

	render: function() {
		this.$el.html(
			this.template(
				this.model.toJSON()
			)
		);
		return this;
	},

	remove: function() {
		this.$el.remove();
	},

	toggleFav: function() {
		this.model.set('favourite', !this.model.get('favourite')); // That favourite is being set here, we're 'creating' one here
	}
});