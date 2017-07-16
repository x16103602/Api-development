class Bookticket < ApplicationRecord
    scope :identify, -> proof { where(:proof => proof) }
    scope :identify, -> name { where(:name => name) }
    
end
