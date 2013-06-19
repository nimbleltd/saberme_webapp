class Video < ActiveRecord::Base
  attr_accessible :title, :youtube_url, :user_owner, :state, :embed_name

  def embed_name
      data_from_user = youtube_url
      name_and_trash = data_from_user.split("v=")
      embed_name = name_and_trash[1].split("&")
      embed_name[0]
  end

end
