class BooksController < ApplicationController
  before_action :find_book, only: [:show, :edit, :update, :destroy]

  def index
  	@books = Book.all 
  end

  def new
  	@book = Book.new
  end

  def create
  	@book = Book.new(book_params)
  	if @book.save #If book saved correctly in the db
	  	redirect_to book_path(@book) #Redirect that @book's path
	  else 
	  	render :new #Else it will render the 'new.html.erb' view
	  end
  end

  def show
  end

  def edit
  end

  def update
  	if @book.update(book_params)
	  	redirect_to books_path  		  		
  	else
  		render :edit
  	end	
  end

  def destroy
  	redirect_to books_path
  end

  private
  
  def find_book
    @book = Book.find params[:id]    
  end

  def book_params
    params.require(:book).permit(:title,
   															 :cuisine, 
   															 :chef,
   															 :image
     														)
  end
end
