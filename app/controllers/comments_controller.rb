class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_location

    def create
      @comment = @location.comments.create(comment_para)
      @comment.user = current_user

      if @comment.save 
        flash[:notice] = "Comment Created"
        redirect_to location_path(@location)
      else
        flash[:alert] = "Comment was not Created"
        redirect_to location_path(@location) 
      end
    end

    def destroy
      @comment = @location.comments.find(params[:id])
      @comment.destroy
      redirect_to location_path(@location) 
    end

  private

    def set_location
      @location = Location.find(params[:location_id])
    end

  def comment_para
    params.require(:comment).permit(:body)
  end

end
