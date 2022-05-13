class CommentsController < ApplicationController
  before_action :authenticate_user!
  def create
    #Create post for the current user
    @comment = current_user.comments.new(comment_params)
    if !@comment.save
      flash[:notice] = @comment.errors.full_massages.to_sentence
    end
      redirect_to location_path(params[:location_id])
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :parent_id).merge(location_id: params[:location_id])
  end 
end
