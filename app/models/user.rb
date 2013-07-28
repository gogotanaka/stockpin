class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :username, :image, :remote_image_url
  mount_uploader :image, ImageUploader

  has_many :stock_user_relations
  has_many :stocks, through: :stock_user_relations, source: :stock

  has_many :comments
	
end
