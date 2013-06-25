class ClaimVideosController < ApplicationController

    def claim
      if current_user.employee?
        @video = Video.find(params[:id])
        @video.update_attribute(:employee_id, current_user.id)
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
        @video_employee = Video.find(params[:employee_id])
        @video_employee.update_attributes(:employee_id => employee.id)
      end
      redirect_to videos_path
    end

end
