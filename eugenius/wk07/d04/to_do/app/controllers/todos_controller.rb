class TodosController < ApplicationController
  before_action :find_todo, only: [:show, :edit, :update, :destroy]

  def index
  	@todos = Todo.all

  	respond_to do |format|
  		format.html
  		format.json { render json: @todos }
  	end
  end

  def show
  	respond_to do |format|
  		format.html
  		format.json { render json: @todo }
  	end
  end

  def new
  	@todo = Todo.new
  end

  def create
  	@todo = Todo.create(todo_params)
  	if @todo.save
	  	redirect_to @todo
	  else 
	  	render 'new'
	  end
  end

  def edit
  end

  def update
  	@todo = Todo.update(todo_params)
  	redirect_to @todo
  end

  def destroy
  	@todo.destroy
  	redirect_to root_path
  end

  private

  def find_todo
  	@todo = Todo.find(params[:id])
  end

  def todo_params
		params.require(:todo).permit(:text, :notes, :completed)  	
  end
end
