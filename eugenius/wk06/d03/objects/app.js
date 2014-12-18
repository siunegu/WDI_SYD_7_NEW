var App = function() {}
//Creating a new App class
//	with the initializer params appName, kind of like in Ruby:
//	def initializer(app_name) then self.appname = appname
//Creating a new App function
App.prototype.boot = function() {
	this.pullinitialData();
}

App.prototype.pullInitialData = function() {
	alert("Pulling data from  " + this.dataUrl)
}
//Creating a new instance of the application and booting it
//Now app will inherit everything from this App prototype
var puppy = new App();
puppy.dataURL = "http:/localhost:3000/puppies";
puppy.boot()

//So puppy is an instance of the App 'Class'