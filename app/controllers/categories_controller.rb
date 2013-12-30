class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.save
    if @category.errors.any?
      render action: 'new'
    else
      @categories = Category.all
      render action: 'index'
    end
  end

  def category_params
    params.require(:category).permit(:name)
  end

  def destroy
    Category.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

end
