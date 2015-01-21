var TimelineView = Backbone.View.extend({
	tagName: "div",
	className: "timeline",

	template: JST['statuses/timeline'],

	initialize: function() {
		this.collection.fetch();
		this.collection.on("sync", this.render, this);
	},

	render: function() {
		this.collection.each(function(status) {
			var statusView = new StatusView({ model:status });
		});
	}     
});