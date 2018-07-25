class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
    @author.id = ""
  end

  def edit
    @author = Author.find(params[:id])
  end

  def create
    @author = Author.new(author_params)
    @author.save
    redirect to "@author"
  end

  def update
    @author = Author.find(params[:id])

    if @author.update(author_params)
      redirect_To @author
    else
      render 'edit'
    end
  end

  def delete
    @author = Author.find(params[:id])
    @author.destroy

    redirect_To authors_path
  end
end
