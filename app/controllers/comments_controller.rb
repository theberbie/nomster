class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create

    @place = Place.find(params[place_id])
    @place.comment.create(comments_params.merge(user: current_user))
    redirect_to place_path(@place)

  end

  private
  def comments_params 
    params.require(:comment).permit(:message, :rating)
  end
end
