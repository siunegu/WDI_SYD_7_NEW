var TimelineView = Backbone.View.extend({
	tagName: "div",
	className: "timeline",

	initialize: function() {
		this.collection.fetch();
		this.collection.on("sync", this.render, this);
	},

	render: function() {
		var self = this;
		this.collection.each(function(status) {
			var statusView = new StatusView({ model:status });
			self.$el.append(statusView.render().el); // self refers to the actual timeline view
		});
	}     
});