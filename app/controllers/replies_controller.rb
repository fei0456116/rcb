class RepliesController < ApplicationController
  authorize_resource
  
  def create
    @topic = Topic.find(params[:topic_id])
    @reply = @topic.replies.create(reply_params.merge({
      :user_id => current_user.id
    }))
  end
  
  def update
    @topic = Topic.find(params[:topic_id])
    @reply = @topic.replies.find(params[:id])
    @reply.update_attributes(reply_params)
  end
  
  def destroy
    @topic = Topic.find(params[:topic_id])
    @reply = @topic.replies.find(params[:id])
    @reply.destroy
  end
  
  private
    def reply_params
      params.require(:reply).permit(:body)
    end
  
end
