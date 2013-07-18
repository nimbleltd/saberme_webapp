class Video < ActiveRecord::Base
  attr_accessible :title, :youtube_url, :customer_id, :state, :embed_name, :employee_id
  belongs_to :customer
  belongs_to :employee
  #has_many :comments

  scope :unassigned, -> {where :employee_id => nil}
  #scope :assigned, -> {where "saber_master IS NOT NULL"}
  scope :completed, -> {where :state => "approved"}


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
