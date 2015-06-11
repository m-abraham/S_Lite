class Location < ActiveRecord::Base

has_many :check_ins , :class_name => "CheckIn", :foreign_key => "location_id"

has_many :users, :through => :check_ins

end

