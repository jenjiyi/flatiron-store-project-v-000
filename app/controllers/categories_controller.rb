class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    # if user_signed_in?
    #   @categories = Category.all
    # else
    #   redirect_to user_session_path
    # end
  end

  def show
    @category = Category.find(params[:id])
  end

end
