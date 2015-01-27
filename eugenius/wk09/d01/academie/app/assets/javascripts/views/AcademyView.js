var SchoolApp = SchoolApp || {};

SchoolApp.AcademyView = Backbone.View.extend({
	tagName: "div",
	className: "academy",

	initialize: function() {
		this.collection.on("add", this.addSchool, this);
	},

	render: function() {
		if (this.name) {
			this.collection.filterByName(this.name).each(this.addSchool, this);
		} else {
			this.collection.each(this.addSchool, this);
		}
	},

	addSchool: function(school) {
	 var schoolView = new SchoolApp.SchoolView({ model: school });
	 this.$el.append(schoolView.render().el);
	}
});
