class CommentsController < ApplicationController
  respond_to :json
  
  def index
    responsd_with Comment.all
  end
  
  def create
    respond_with Comment.create(comment_params)
  end


  private
  
    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:author, :text)
    end
end
