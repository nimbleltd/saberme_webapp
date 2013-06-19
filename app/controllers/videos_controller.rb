class VideosController < ApplicationController

    def index
      @videos = Video.all
    end

    def new
      @video = Video.new
    end

    def create
      @video = Video.new(params[:video])
      @video.save!
      redirect_to videos_path
    end

    def show
      @video = Video.find(params[:id])
    end

    def edit
      @video = Video.find(params[:id])
    end

    def update
      @video = Video.find(params[:id])
      @video.update_attributes(params[:video])
      @video.save!
      redirect_to video_path(@video)
    end

    def destroy
      @video = Video.find(params[:id])
      @video.destroy
      redirect_to videos_path
    end

    def youtube_url_from_user
      @video = Video.find(params[:youtube_url])
    end

end
