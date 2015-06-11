class Flash < ActiveRecord::Base

belongs_to :match , :class_name => "User", :foreign_key => "match_id"

end
