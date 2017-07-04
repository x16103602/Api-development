class AddColumnToBooktickets < ActiveRecord::Migration[5.2]
  def change
    add_column :booktickets, :tclass, :string
    add_column :booktickets, :treturn, :string
  end
end
