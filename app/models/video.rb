class Video < ActiveRecord::Base
  attr_accessible :title, :youtube_url, :user_owner, :state
end
