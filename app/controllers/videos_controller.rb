class VideosController < ApplicationController
  def create
    video = Video.new(params)
    video.save
    redirect_to root_path
  end

  def index
    @videos = Video.all
  end

  def new
    @video = Video.new
  end

  def show
    @video = Video.find(params[:id])
  end
end
