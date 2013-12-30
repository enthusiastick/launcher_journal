class CategoriesController < ActionController::Base

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
    @category = Category.find(params[:id])
    @category.destory
    render action: 'index'
  end

end
