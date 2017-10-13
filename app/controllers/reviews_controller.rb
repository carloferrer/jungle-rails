class ReviewsController < ApplicationController
  before_action :require_login

  def require_login
    # byebug
    if !current_user
      redirect_to "/products/#{@product_id}"
    end
  end

  def create
    # raise "Hello - from, Review."
    # @user_id = session[:user_id]

    @user_id = current_user.id
    @product_id = params['product_id']
    @description = review_params['description']
    @rating = review_params['rating']

    # byebug
    @review = Review.create!({product_id: @product_id, user_id: @user_id, description: @description, rating: @rating})
    redirect_to "/products/#{@product_id}"
  end

  def destroy
    @review = Review.find params[:id]
    @review.destroy
    redirect_to "/products/#{@product_id}"
  end

  def review_params
    params.require(:review).permit(:product_id, :user_id, :description, :rating)
  end

end
