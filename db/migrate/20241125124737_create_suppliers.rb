class CreateSuppliers < ActiveRecord::Migration[8.0]
  def change
    create_table :suppliers do |t|
      t.string :supplierID
      t.string :name
      t.string :contactDetails
      t.string :location

      t.timestamps
    end
  end
end
