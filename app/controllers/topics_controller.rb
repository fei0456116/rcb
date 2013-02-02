class TopicsController < ApplicationController
  authorize_resource :except => [:index, :show]

  def index
    @topics = Topic.page(params[:page]).per(4)
    @sections = Section.all
  end

  def show
    @topic = Topic.find(params[:id])
  end

  def new
    @topic = Topic.new
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  def create
    @topic = Topic.create(topic_params.merge({
      :user_id => current_user.id
    }))
  end

  def update
    @topic = Topic.find(params[:id])
    @topic.update_attributes(topic_params)
  end

  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
  end

  def like_toggle
    
  end

  private
    def topic_params
      params.require(:topic).permit(:title, :node_id, :body)
    end
end
