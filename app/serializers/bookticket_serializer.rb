class BookticketSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :aticket, :cticket, :tdate, :hour, :from, :to, :proof, :cost, :tclass, :treturn
end
