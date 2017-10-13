class ReviewsController < ApplicationController

  def create
    # raise "Hello - from, Review."
    # @user_id = session[:user_id]
    # byebug
    @user_id = current_user.id
    @product_id = params['product_id']
    @description = review_params['description']
    @rating = review_params['rating']


    @review = Review.create!({product_id: @product_id, user_id: @user_id, description: @description, rating: @rating})
    redirect_to :root
  end

  def review_params
    params.require(:review).permit(:product_id, :user_id, :description, :rating)
  end

end
