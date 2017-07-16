class Bookticket < ApplicationRecord
    scope :identify, -> proof { where(:proof => proof) }
    scope :name, -> name { where(:name => name) }
    
end
