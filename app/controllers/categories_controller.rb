class CategoriesController < ApplicationController

  def create
    category = Category.new(strong_params)
    category.save
    redirect_to '/contacts'
  end
  private
  def strong_params
    params.require(:category).permit(:title)
  end
end
