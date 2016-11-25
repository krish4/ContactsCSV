class State < ActiveRecord::Base
 has_many :cities
 belongs_to :contact,:class_name => 'Contact' 
end
