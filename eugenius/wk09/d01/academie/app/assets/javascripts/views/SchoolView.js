var SchoolApp = SchoolApp || {};

SchoolApp.SchoolView = Backbone.View.extend({
	tagName: "div",
	className: "school",
	template: JST["schools/school"],

	events: {
		"click button": "toggleFav" 
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
		this.model.set("favourite", !this.model.get("favourite"));
	}
});