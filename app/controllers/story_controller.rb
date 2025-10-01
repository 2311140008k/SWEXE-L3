class StoryController < ApplicationController
  def index
    @story = Story.all
  end
  def new
    @story = Story.new
  end
  def create
    story = Story.new(title: params[:story][:title], stage: params[:story][:stage],date: params[:story][:date])
    story.save
    redirect_to '/' 
  end
  def destroy
    story = Story.find(params[:id])
    story.destroy
    redirect_to '/'
  end
  def show
    @story = Story.find(params[:id])
  end
  def edit
    @story = Story.find(params[:id])
  end
  def update
    story = Story.find(params[:id])
    story.update(title: params[:story][:title], atage: params[:story][:stage],date: params[:story][:date])
    redirect_to '/'
  end
end
