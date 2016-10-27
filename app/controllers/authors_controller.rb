class AuthorsController < ApplicationController
  def new
  end

  def create
    @author = Author.new(author_params)

    @author.save
    redirect_to @author
  end

  private
    def author_params
      params.fetch(:author, {}).permit(:first_name, :last_name, :homepage)
    end
  # Should work with require(:author) instead of fetch(:author, {}), but it doesn't
end
