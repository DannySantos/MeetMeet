class ReviewsController < ApplicationController
  def create
    @review = Review.create!(review_params)

    respond_to do |format|
      format.html { redirect_to profile_path @review.reviewed_id }
      format.js
    end
  end
  
  private
  
  def review_params
    params.require(:review).permit(:title, :rating, :body, :reviewed_id, :reviewer_id)
  end
end
