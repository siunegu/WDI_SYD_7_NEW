var SchoolApp = SchoolApp || {};

SchoolApp.AppRouter = Backbone.Router.extend({
	schoolsCollection: new SchoolApp.Schools(),

  openPage: function(url) {
    this.navigate(url, { trigger: true });
  },

	routes: {
	    "": "home",
	    "about": "aboutPage",
	    ":name": "filterName",
	    "*404": "notFound"	    
	},

	home: function() {
		var academyView = new SchoolApp.AcademyView({ collection: this.schoolsCollection });
		academyView.render();
		$("#container").append(academyView.el);    		
	},

	filterName: function(name) {
		var academyView = new SchoolApp.AcademyView({ collection: this.schoolsCollection });
    academyView.name = name;
    academyView.render();
    $("#container").html(academyView.el);
	},

	aboutPage: function() {
		$("#container").html(JST['about']());		
	},

	notFound: function() {
		$("#container").html(JST['404']());
	}
	
});
