class CreateOemManufacturers < ActiveRecord::Migration[8.0]
  def change
    create_table :oem_manufacturers do |t|
      t.string :manufacturerID
      t.string :name
      t.string :contactDetails
      t.string :location

      t.timestamps
    end
  end
end
