class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

mount_uploader :avatar, AvatarUploader

has_many :check_ins , :class_name => "CheckIn", :foreign_key => "user_id"

has_many :matches , :class_name => "Flash", :foreign_key => "match_id"

has_many :locations, :through => :check_ins

end
