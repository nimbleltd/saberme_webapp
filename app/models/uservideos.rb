class Uservideos < ActiveRecord::Base
    attr_accessible :video_id, :user_id
    belongs_to :user
    belongs_to :video
end