class ReviewsController < ApplicationController

  def create
    raise "Hello - from, Review."
    # @user_id = session[:user_id]

    # @review = Review.new(review_params)
  end

  # def review_params
  #   params.require(:review).permit(:user_id, :product_id, :description, :rating)
  # end

end
