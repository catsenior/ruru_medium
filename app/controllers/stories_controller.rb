class StoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_story, only: [:edit, :update, :destroy]

  def index
    @stories = current_user.stories.order(created_at: :desc)
  end
  
  def new
    @story = current_user.stories.new
  end

  def create
    @story = current_user.stories.new(story_params)
    if @story.save
      if params[:publish_draft]
        @story.publish!
        redirect_to stories_path, notice:'文章已發布'
      else
        redirect_to edit_story_path(@story),notice:'文章已儲存'
      end
    else
      render :new
    end
  end

  def destroy
    if @story.present?
      @story.destroy
      redirect_to stories_path, notice: '故事已刪除'
    else
      redirect_to stories_path
    end
  end
  

  def edit
  end

  def update
    if @story.update(story_params)
      case 
      when params[:publish_draft]
        @story.publish!
        redirect_to stories_path, notice: '文章已發布'
      when params[:unpublish]
        @story.unpublish!
        redirect_to stories_path, notice: '文章已下架'
      else
        redirect_to stories_path, notice: '文章更新成功'
      end
    else
      render :edit
    end
  end
  

  private
  def find_story
    @story = current_user.stories.friendly.find(params[:id])
  end
  

  def story_params
    params.require(:story).permit(:title,:content,:cover_image)
  end 
end
