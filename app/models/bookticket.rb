class Bookticket < ApplicationRecord
    scope :identify, -> proof { where(:proof => proof) }
    scope :custname, -> name { where(:name => name) }
    
end
