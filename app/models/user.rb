class User < ActiveRecord::Base
  has_many :videos, :foreign_key => "customer_id"
  has_many :assigned_videos, :class_name => "Video", :foreign_key => "employee_id", :conditions => "videos.state != 'approved'"

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  def customer?
    !employee?
  end

end
