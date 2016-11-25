class Contact < ActiveRecord::Base
 has_one :state,:class_name => 'State' 
end
