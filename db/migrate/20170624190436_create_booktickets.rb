class CreateBooktickets < ActiveRecord::Migration[5.2]
  def change
    create_table :booktickets do |t|
      t.string :name
      t.integer :age
      t.integer :aticket
      t.integer :cticket
      t.date :tdate
      t.integer :hour
      t.string :from
      t.string :to
      t.string :proof
      t.integer :cost

      t.timestamps
    end
  end
end
