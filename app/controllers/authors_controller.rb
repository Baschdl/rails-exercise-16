class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:id])
  end

  def new
    @article = Author.new
  end

  def edit
    @author = Author.find(params[:id])
  end

  def create
    @author = Author.new(author_params)

    if @author.save
      redirect_to @author
    else
      render 'new'
    end
  end

  def update
    @author = Author.find(params[:id])

    if @author.update(article_params)
      redirect_to @author
    else
      render 'edit'
    end
  end

  private
    def author_params
      params.require(:authors).permit(:first_name, :last_name, :homepage)
    end

end