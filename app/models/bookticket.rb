class Bookticket < ApplicationRecord
    scope :identify, -> proof { where(:proof => proof) }
end
