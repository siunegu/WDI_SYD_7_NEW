class TodoController < ApplicationController
 def index
 	@todos = Todo.where( done: false )
 	@todone = Todo.where( done: true )
 end

 def show
 	@todo = Todo.find(params[:id])
 end

 def new
 	@todo = Todo.new
 end

 def create
 	@todo = Todo.new(todo_params)
 	# You can also do Todo.create, which does .new and .save in one go.
 	if @todo.save
 		redirect_to todo_path(@todo)
 	else
 		render "new"
 	end
 end

 def update
 	@todo = Todo.find(params[:id])

 	if @todo.update_attribute(:done, true)
 		redirect_to todos_path, notice: "Your todo was marked as done!"
 	else
 		redirect_to todos_path, notice: "Your todo was unable to be marked as done..."
 	end
 end

 # Why isn't there an 'edit'? We don't need the 'edit' action for this todo app.

 def destroy
 	@todo = Todo.find(params[:id])
 	@todo.destroy
 	redirect_to todos_path, notice: "Your todo was deleted!"
 end

 private

 def todo_params
 	params.require(:todo).permit(:name, :done)
 end
end
