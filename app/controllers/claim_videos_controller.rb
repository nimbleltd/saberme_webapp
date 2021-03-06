class ClaimVideosController < ApplicationController
  before_filter :authenticate_user!

    def claim
      if current_user.employee?
        @video = Video.find(params[:id])
        @video.update_attributes(:employee_id => current_user.id)
      end
      redirect_to videos_path
    end

    def unassign
      if current_user.employee?
        @video = Video.find(params[:id])
        @video.update_attributes(:employee_id => nil)
      end
      redirect_to videos_path
    end

    def reassign
      if current_user.employee?
        @video = Video.find(params[:id])
        @video.update_attributes(:employee_id => params[:employee_id])
      end
      redirect_to videos_path
    end

end
