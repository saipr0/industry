class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :productID
      t.string :name
      t.float :price
      t.string :manufacturerDetails
      t.string :partDetails

      t.timestamps
    end
  end
end
