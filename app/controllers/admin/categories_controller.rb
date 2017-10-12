class Admin::CategoriesController < ApplicationController
before_filter :authorize # STARTED AUTHORIZATION BEFORE EMAIL RECEIPTS COMPLETE
  def index
    @categories = Category.order(id: :desc).all #order categories by descending ID
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to [:admin, :categories], notice: 'Category craeted!'
    else
      render :new
    end
  end

  def category_params
    params.require(:category).permit(:name)
  end

end
