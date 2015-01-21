class VideosController < ApplicationController
  def create
    video = Video.new(vieo_params)
    video.save
    redirect_to root_path
  end

  def edit
    @video = Video.find(params[:id])
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

  def update
    @video = Video.find(params[:id])
    @video.update(video_params)
    redirect_to root_path
  end

  private
  def video_params
    params.require(:video).permit(:title, :description, :youtube_id)
  end
end
