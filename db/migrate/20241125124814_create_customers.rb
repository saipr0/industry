class CreateCustomers < ActiveRecord::Migration[8.0]
  def change
    create_table :customers do |t|
      t.string :customerID
      t.string :name
      t.string :contactDetails
      t.string :purchasedProducts

      t.timestamps
    end
  end
end
