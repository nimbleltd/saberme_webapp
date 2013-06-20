class VideosController < ApplicationController
    #before_filter :authenticate_user!, :except => [:show, :index]

    def index
       @videos = Video.all
      #@videos = Video.all(:include => :user, :conditions => {:users => {:admin => true}})
    end

    def new
      @video = Video.new
    end

    def create
      @video = current_user.videos.new(params[:video])
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
