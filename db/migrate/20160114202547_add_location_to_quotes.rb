class AddLocationToQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :location, :string
  end
end
