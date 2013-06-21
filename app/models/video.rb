class Video < ActiveRecord::Base
  attr_accessible :title, :youtube_url, :user_id, :state, :embed_name, :saber_master

  belongs_to :user
  #has_many :comments

  def embed_name
      data_from_user = youtube_url
      name_and_trash = data_from_user.split("v=")
      embed_name = name_and_trash[1].split("&")
      embed_name[0]
  end

  def downlaod_video
    system "youtube-dl -t  '#{video.embed_name}' --restrict-filenames"
  end

end
