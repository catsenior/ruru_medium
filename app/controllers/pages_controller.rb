class PagesController < ApplicationController
  before_action :find_story, only: [:show]

  def index
    #@stories = Story.order(created_at: :desc).includes(:user)
    @stories = Story.published_stories
  end
  
  def show
    @comment = @story.comments.new
    @comments = @story.comments.order(id: :desc)
  end
  
  def user
    @stories = User.find_by_username(params[:username]).stories.published_stories
  end
  
  private
  def find_story
    @story = Story.friendly.find(params[:story_id])
  end
end
