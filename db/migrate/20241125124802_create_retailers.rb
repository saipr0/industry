class CreateRetailers < ActiveRecord::Migration[8.0]
  def change
    create_table :retailers do |t|
      t.string :retailerID
      t.string :name
      t.string :contactDetails
      t.string :location

      t.timestamps
    end
  end
end
